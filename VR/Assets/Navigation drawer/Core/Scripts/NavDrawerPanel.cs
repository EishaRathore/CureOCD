using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

namespace NavigationDrawer.UI
{
    public class NavDrawerPanel : MonoBehaviour, IBeginDragHandler, IDragHandler, IEndDragHandler
    {
        #region ENUMS

        private enum ENavigation
        {
            Left,
            Right
        }

        #endregion

        #region FIELDS

        [SerializeField, Header("Components")]
        private Image _imgBackground = default;

        [SerializeField]
        private GameObject _panelLayer = default;

        [SerializeField]
        private Canvas _canvas = default;

        [SerializeField, Header("Properties")]
        private ENavigation _navigationType = default;

        [SerializeField]
        private bool _darkenBackground = true;

        [SerializeField]
        private bool _tapBackgroundToClose = true;

        [SerializeField]
        private bool _openOnStart = default;

        [SerializeField]
        private float _animationDuration = 0.5f;

        private int _animState;
        private float _maxPosition;
        private float _minPosition;
        private float _animStartTime;
        private float _animDeltaTime;
        private float _currentBackgroundAlpha;

        private RectTransform _rectTransform;
        private RectTransform _backgroundRectTransform;
        private GameObject _backgroundGameObject;
        private CanvasGroup _backgroundCanvasGroup;

        private Vector2 _currentPos;
        private Vector2 _tempVector2;

        #endregion

        #region UNITY_METHODS

        private void Awake()
        {
            _rectTransform = gameObject.GetComponent<RectTransform>();
            _backgroundRectTransform = _imgBackground.GetComponent<RectTransform>();
            _backgroundCanvasGroup = _imgBackground.GetComponent<CanvasGroup>();
        }

        private void Start()
        {
            if (_navigationType == ENavigation.Left)
            {
                _maxPosition = _rectTransform.rect.width / 2;
            }
            else if (_navigationType == ENavigation.Right)
            {
                _maxPosition = -_rectTransform.rect.width / 2;
            }

            _minPosition = -_maxPosition;

            RefreshBackgroundSize();

            _backgroundGameObject = _imgBackground.gameObject;

            if (_openOnStart)
            {
                Open();
            }
            else
            {
                _backgroundGameObject.SetActive(false);
                _panelLayer.SetActive(false);
            }
        }

        private void Update()
        {
            if (_animState == 1)
            {
                _animDeltaTime = Time.realtimeSinceStartup - _animStartTime;

                if (_animDeltaTime <= _animationDuration)
                {
                    _rectTransform.anchoredPosition = QuintOut(_currentPos, new Vector2(_maxPosition, _rectTransform.anchoredPosition.y), _animDeltaTime, _animationDuration);
                    if (_darkenBackground)
                    {
                        _backgroundCanvasGroup.alpha = QuintOut(_currentBackgroundAlpha, 1f, _animDeltaTime, _animationDuration);
                    }
                }
                else
                {
                    _rectTransform.anchoredPosition = new Vector2(_maxPosition, _rectTransform.anchoredPosition.y);
                    if (_darkenBackground)
                    {
                        _backgroundCanvasGroup.alpha = 1f;
                    }

                    _animState = 0;
                }
            }
            else if (_animState == 2)
            {
                _animDeltaTime = Time.realtimeSinceStartup - _animStartTime;
                if (_animDeltaTime <= _animationDuration)
                {
                    _rectTransform.anchoredPosition = QuintOut(_currentPos, new Vector2(_minPosition, _rectTransform.anchoredPosition.y), _animDeltaTime, _animationDuration);
                    if (_darkenBackground)
                    {
                        _backgroundCanvasGroup.alpha = QuintOut(_currentBackgroundAlpha, 0f, _animDeltaTime, _animationDuration);
                    }
                }
                else
                {
                    _rectTransform.anchoredPosition = new Vector2(_minPosition, _rectTransform.anchoredPosition.y);
                    if (_darkenBackground)
                    {
                        _backgroundCanvasGroup.alpha = 0f;
                    }

                    _backgroundGameObject.SetActive(false);
                    _panelLayer.SetActive(false);

                    _animState = 0;
                }
            }

            if (_navigationType == ENavigation.Left)
            {
                _rectTransform.anchoredPosition = new Vector2(Mathf.Clamp(_rectTransform.anchoredPosition.x, _minPosition, _maxPosition), _rectTransform.anchoredPosition.y);
            }
            else if (_navigationType == ENavigation.Right)
            {
                _rectTransform.anchoredPosition = new Vector2(Mathf.Clamp(_rectTransform.anchoredPosition.x, _maxPosition, _minPosition), _rectTransform.anchoredPosition.y);
            }
        }

        public void OnBeginDrag(PointerEventData data)
        {
            RefreshBackgroundSize();

            _animState = 0;

            _backgroundGameObject.SetActive(true);
            _panelLayer.SetActive(true);
        }

        public void OnDrag(PointerEventData data)
        {
            _tempVector2 = _rectTransform.anchoredPosition;
            _tempVector2.x += data.delta.x;

            _rectTransform.anchoredPosition = _tempVector2;

            if (_darkenBackground)
            {
                _backgroundCanvasGroup.alpha = 1 - (_maxPosition - _rectTransform.anchoredPosition.x) / (_maxPosition - _minPosition);
            }
        }

        public void OnEndDrag(PointerEventData data)
        {
            if (_navigationType == ENavigation.Left)
            {
                if (Mathf.Abs(data.delta.x) >= 0.5f)
                {
                    if (data.delta.x > 0.5f)
                    {
                        Open();
                    }
                    else
                    {
                        Close();
                    }
                }
                else
                {
                    if ((_rectTransform.anchoredPosition.x - _minPosition) >
                        (_maxPosition - _rectTransform.anchoredPosition.x))
                    {
                        Open();
                    }
                    else
                    {
                        Close();
                    }
                }
            }
            else if (_navigationType == ENavigation.Right)
            {
                if (Mathf.Abs(data.delta.x) >= 0.5f)
                {
                    if (data.delta.x < 0.5f)
                    {
                        Open();
                    }
                    else
                    {
                        Close();
                    }
                }
                else
                {
                    if ((_rectTransform.anchoredPosition.x - _minPosition) <
                        (_maxPosition - _rectTransform.anchoredPosition.x))
                    {
                        Open();
                    }
                    else
                    {
                        Close();
                    }
                }
            }
        }

        #endregion

        #region PUBLIC_METHODS

        public void BackgroundTap()
        {
            if (_tapBackgroundToClose)
            {
                Close();
            }
        }

        public void Open()
        {
            RefreshBackgroundSize();
            _backgroundGameObject.SetActive(true);
            _panelLayer.SetActive(true);
            _currentPos = _rectTransform.anchoredPosition;
            _currentBackgroundAlpha = _backgroundCanvasGroup.alpha;
            _backgroundCanvasGroup.blocksRaycasts = true;
            _animStartTime = Time.realtimeSinceStartup;
            _animState = 1;
        }

        public void Close()
        {
            _currentPos = _rectTransform.anchoredPosition;
            _currentBackgroundAlpha = _backgroundCanvasGroup.alpha;
            _backgroundCanvasGroup.blocksRaycasts = false;
            _animStartTime = Time.realtimeSinceStartup;
            _animState = 2;
        }

        protected virtual float QuintOut(float startValue, float endValue, float time, float duration)
        {
            var differenceValue = endValue - startValue;
            time = Mathf.Clamp(time, 0f, duration);
            time /= duration;

            if (time == 0f)
            {
                return startValue;
            }

            if (time == 1f)
            {
                return endValue;
            }

            time--;
            return differenceValue * (time * time * time * time * time + 1) + startValue;
        }

        #endregion

        #region PRIVATE_METHODS

        private void RefreshBackgroundSize()
        {
            if (_navigationType == ENavigation.Left)
            {
                var width = _canvas.GetComponent<RectTransform>().rect.width;
                _backgroundRectTransform.sizeDelta = new Vector2(width, _backgroundRectTransform.sizeDelta.y);
            }
            else if (_navigationType == ENavigation.Right)
            {
                var width = _canvas.GetComponent<RectTransform>().rect.width;
                _backgroundRectTransform.sizeDelta = new Vector2(width, _backgroundRectTransform.sizeDelta.y);
                _backgroundRectTransform.localPosition = new Vector2(-(_rectTransform.rect.width / 2), 0);
            }
        }

        private Vector2 QuintOut(Vector2 startValue, Vector2 endValue, float time, float duration)
        {
            var tempVector2 = startValue;
            tempVector2.x = QuintOut(startValue.x, endValue.x, time, duration);
            tempVector2.y = QuintOut(startValue.y, endValue.y, time, duration);
            return tempVector2;
        }

        #endregion
    }
}