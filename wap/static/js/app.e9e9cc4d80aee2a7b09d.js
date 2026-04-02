webpackJsonp([1], {
    "+Hhr": function(t, a) {},
    "1nti": function(t, a) {},
    "3jO1": function(t, a) {},
    "4B/U": function(t, a, e) {
        "use strict";
        function i(t) {
            if (null == t) return window;
            if ("[object Window]" !== t.toString()) {
                var a = t.ownerDocument;
                return a && a.defaultView || window
            }
            return t
        }
        function s(t) {
            return t instanceof i(t).Element || t instanceof Element
        }
        function n(t) {
            return t instanceof i(t).HTMLElement || t instanceof HTMLElement
        }
        function o(t) {
            return "undefined" != typeof ShadowRoot && (t instanceof i(t).ShadowRoot || t instanceof ShadowRoot)
        }
        e.d(a, "a",
        function() {
            return j
        }),
        e.d(a, "b",
        function() {
            return M
        });
        var r = Math.round;
        function c(t, a) {
            void 0 === a && (a = !1);
            var e = t.getBoundingClientRect(),
            i = 1,
            s = 1;
            if (n(t) && a) {
                var o = t.offsetHeight,
                c = t.offsetWidth;
                c > 0 && (i = r(e.width) / c || 1),
                o > 0 && (s = r(e.height) / o || 1)
            }
            return {
                width: e.width / i,
                height: e.height / s,
                top: e.top / s,
                right: e.right / i,
                bottom: e.bottom / s,
                left: e.left / i,
                x: e.left / i,
                y: e.top / s
            }
        }
        function l(t) {
            var a = i(t);
            return {
                scrollLeft: a.pageXOffset,
                scrollTop: a.pageYOffset
            }
        }
        function d(t) {
            return t ? (t.nodeName || "").toLowerCase() : null
        }
        function v(t) {
            return ((s(t) ? t.ownerDocument: t.document) || window.document).documentElement
        }
        function p(t) {
            return i(t).getComputedStyle(t)
        }
        function u(t) {
            var a = p(t),
            e = a.overflow,
            i = a.overflowX,
            s = a.overflowY;
            return /auto|scroll|overlay|hidden/.test(e + s + i)
        }
        function f(t, a, e) {
            void 0 === e && (e = !1);
            var s, o, p = n(a),
            f = n(a) &&
            function(t) {
                var a = t.getBoundingClientRect(),
                e = r(a.width) / t.offsetWidth || 1,
                i = r(a.height) / t.offsetHeight || 1;
                return 1 !== e || 1 !== i
            } (a),
            g = v(a),
            h = c(t, f),
            _ = {
                scrollLeft: 0,
                scrollTop: 0
            },
            m = {
                x: 0,
                y: 0
            };
            return (p || !p && !e) && (("body" !== d(a) || u(g)) && (_ = (s = a) !== i(s) && n(s) ? {
                scrollLeft: (o = s).scrollLeft,
                scrollTop: o.scrollTop
            }: l(s)), n(a) ? ((m = c(a, !0)).x += a.clientLeft, m.y += a.clientTop) : g && (m.x = function(t) {
                return c(v(t)).left + l(t).scrollLeft
            } (g))),
            {
                x: h.left + _.scrollLeft - m.x,
                y: h.top + _.scrollTop - m.y,
                width: h.width,
                height: h.height
            }
        }
        function g(t) {
            return "html" === d(t) ? t: t.assignedSlot || t.parentNode || (o(t) ? t.host: null) || v(t)
        }
        function h(t, a) {
            var e;
            void 0 === a && (a = []);
            var s = function t(a) {
                return ["html", "body", "#document"].indexOf(d(a)) >= 0 ? a.ownerDocument.body: n(a) && u(a) ? a: t(g(a))
            } (t),
            o = s === (null == (e = t.ownerDocument) ? void 0 : e.body),
            r = i(s),
            c = o ? [r].concat(r.visualViewport || [], u(s) ? s: []) : s,
            l = a.concat(c);
            return o ? l: l.concat(h(g(c)))
        }
        function _(t) {
            return ["table", "td", "th"].indexOf(d(t)) >= 0
        }
        function m(t) {
            return n(t) && "fixed" !== p(t).position ? t.offsetParent: null
        }
        function b(t) {
            for (var a = i(t), e = m(t); e && _(e) && "static" === p(e).position;) e = m(e);
            return e && ("html" === d(e) || "body" === d(e) && "static" === p(e).position) ? a: e ||
            function(t) {
                var a = -1 !== navigator.userAgent.toLowerCase().indexOf("firefox");
                if ( - 1 !== navigator.userAgent.indexOf("Trident") && n(t) && "fixed" === p(t).position) return null;
                var e = g(t);
                for (o(e) && (e = e.host); n(e) && ["html", "body"].indexOf(d(e)) < 0;) {
                    var i = p(e);
                    if ("none" !== i.transform || "none" !== i.perspective || "paint" === i.contain || -1 !== ["transform", "perspective"].indexOf(i.willChange) || a && "filter" === i.willChange || a && i.filter && "none" !== i.filter) return e;
                    e = e.parentNode
                }
                return null
            } (t) || a
        }
        var y = "top",
        w = "bottom",
        C = "right",
        k = "left",
        x = "auto",
        $ = "start",
        S = "end",
        I = [].concat([y, w, C, k], [x]).reduce(function(t, a) {
            return t.concat([a, a + "-" + $, a + "-" + S])
        },
        []),
        L = ["beforeRead", "read", "afterRead", "beforeMain", "main", "afterMain", "beforeWrite", "write", "afterWrite"];
        function A(t) {
            var a = new Map,
            e = new Set,
            i = [];
            return t.forEach(function(t) {
                a.set(t.name, t)
            }),
            t.forEach(function(t) {
                e.has(t.name) ||
                function t(s) {
                    e.add(s.name),
                    [].concat(s.requires || [], s.requiresIfExists || []).forEach(function(i) {
                        if (!e.has(i)) {
                            var s = a.get(i);
                            s && t(s)
                        }
                    }),
                    i.push(s)
                } (t)
            }),
            i
        }
        function T(t) {
            for (var a = arguments.length,
            e = new Array(a > 1 ? a - 1 : 0), i = 1; i < a; i++) e[i - 1] = arguments[i];
            return [].concat(e).reduce(function(t, a) {
                return t.replace(/%s/, a)
            },
            t)
        }
        var E = 'Popper: modifier "%s" provided an invalid %s property, expected %s but got %s',
        U = 'Popper: modifier "%s" requires "%s", but "%s" modifier is not available',
        D = ["name", "enabled", "phase", "fn", "effect", "requires", "options"];
        function N(t) {
            return t.split("-")[0]
        }
        function z(t) {
            return t.split("-")[1]
        }
        var P = "Popper: Invalid reference or popper argument provided. They must be either a DOM element or virtual element.",
        B = "Popper: An infinite loop in the modifiers cycle has been detected! The cycle has been interrupted to prevent a browser crash.",
        R = {
            placement: "bottom",
            modifiers: [],
            strategy: "absolute"
        };
        function F() {
            for (var t = arguments.length,
            a = new Array(t), e = 0; e < t; e++) a[e] = arguments[e];
            return ! a.some(function(t) {
                return ! (t && "function" == typeof t.getBoundingClientRect)
            })
        }
        var O = {
            passive: !0
        };
        var q = {
            top: "auto",
            right: "auto",
            bottom: "auto",
            left: "auto"
        };
        function V(t) {
            var a, e = t.popper,
            s = t.popperRect,
            n = t.placement,
            o = t.variation,
            c = t.offsets,
            l = t.position,
            d = t.gpuAcceleration,
            u = t.adaptive,
            f = t.roundOffsets,
            g = t.isFixed,
            h = c.x,
            _ = void 0 === h ? 0 : h,
            m = c.y,
            x = void 0 === m ? 0 : m,
            $ = "function" == typeof f ? f({
                x: _,
                y: x
            }) : {
                x: _,
                y: x
            };
            _ = $.x,
            x = $.y;
            var I = c.hasOwnProperty("x"),
            L = c.hasOwnProperty("y"),
            A = k,
            T = y,
            E = window;
            if (u) {
                var U = b(e),
                D = "clientHeight",
                N = "clientWidth";
                if (U === i(e) && "static" !== p(U = v(e)).position && "absolute" === l && (D = "scrollHeight", N = "scrollWidth"), U = U, n === y || (n === k || n === C) && o === S) T = w,
                x -= (g && U === E && E.visualViewport ? E.visualViewport.height: U[D]) - s.height,
                x *= d ? 1 : -1;
                if (n === k || (n === y || n === w) && o === S) A = C,
                _ -= (g && U === E && E.visualViewport ? E.visualViewport.width: U[N]) - s.width,
                _ *= d ? 1 : -1
            }
            var z, P = Object.assign({
                position: l
            },
            u && q),
            B = !0 === f ?
            function(t) {
                var a = t.x,
                e = t.y,
                i = window.devicePixelRatio || 1;
                return {
                    x: r(a * i) / i || 0,
                    y: r(e * i) / i || 0
                }
            } ({
                x: _,
                y: x
            }) : {
                x: _,
                y: x
            };
            return _ = B.x,
            x = B.y,
            d ? Object.assign({},
            P, ((z = {})[T] = L ? "0": "", z[A] = I ? "0": "", z.transform = (E.devicePixelRatio || 1) <= 1 ? "translate(" + _ + "px, " + x + "px)": "translate3d(" + _ + "px, " + x + "px, 0)", z)) : Object.assign({},
            P, ((a = {})[T] = L ? x + "px": "", a[A] = I ? _ + "px": "", a.transform = "", a))
        }
        var j = function(t) {
            void 0 === t && (t = {});
            var a = t,
            e = a.defaultModifiers,
            i = void 0 === e ? [] : e,
            n = a.defaultOptions,
            o = void 0 === n ? R: n;
            return function(t, a, e) {
                void 0 === e && (e = o);
                var n, r, l = {
                    placement: "bottom",
                    orderedModifiers: [],
                    options: Object.assign({},
                    R, o),
                    modifiersData: {},
                    elements: {
                        reference: t,
                        popper: a
                    },
                    attributes: {},
                    styles: {}
                },
                d = [],
                v = !1,
                u = {
                    state: l,
                    setOptions: function(e) {
                        var n = "function" == typeof e ? e(l.options) : e;
                        g(),
                        l.options = Object.assign({},
                        o, l.options, n),
                        l.scrollParents = {
                            reference: s(t) ? h(t) : t.contextElement ? h(t.contextElement) : [],
                            popper: h(a)
                        };
                        var r = function(t) {
                            var a = A(t);
                            return L.reduce(function(t, e) {
                                return t.concat(a.filter(function(t) {
                                    return t.phase === e
                                }))
                            },
                            [])
                        } (function(t) {
                            var a = t.reduce(function(t, a) {
                                var e = t[a.name];
                                return t[a.name] = e ? Object.assign({},
                                e, a, {
                                    options: Object.assign({},
                                    e.options, a.options),
                                    data: Object.assign({},
                                    e.data, a.data)
                                }) : a,
                                t
                            },
                            {});
                            return Object.keys(a).map(function(t) {
                                return a[t]
                            })
                        } ([].concat(i, l.options.modifiers)));
                        l.orderedModifiers = r.filter(function(t) {
                            return t.enabled
                        }),
                        function(t) {
                            t.forEach(function(a) { [].concat(Object.keys(a), D).filter(function(t, a, e) {
                                    return e.indexOf(t) === a
                                }).forEach(function(e) {
                                    switch (e) {
                                    case "name":
                                        "string" != typeof a.name && console.error(T(E, String(a.name), '"name"', '"string"', '"' + String(a.name) + '"'));
                                        break;
                                    case "enabled":
                                        "boolean" != typeof a.enabled && console.error(T(E, a.name, '"enabled"', '"boolean"', '"' + String(a.enabled) + '"'));
                                        break;
                                    case "phase":
                                        L.indexOf(a.phase) < 0 && console.error(T(E, a.name, '"phase"', "either " + L.join(", "), '"' + String(a.phase) + '"'));
                                        break;
                                    case "fn":
                                        "function" != typeof a.fn && console.error(T(E, a.name, '"fn"', '"function"', '"' + String(a.fn) + '"'));
                                        break;
                                    case "effect":
                                        null != a.effect && "function" != typeof a.effect && console.error(T(E, a.name, '"effect"', '"function"', '"' + String(a.fn) + '"'));
                                        break;
                                    case "requires":
                                        null == a.requires || Array.isArray(a.requires) || console.error(T(E, a.name, '"requires"', '"array"', '"' + String(a.requires) + '"'));
                                        break;
                                    case "requiresIfExists":
                                        Array.isArray(a.requiresIfExists) || console.error(T(E, a.name, '"requiresIfExists"', '"array"', '"' + String(a.requiresIfExists) + '"'));
                                        break;
                                    case "options":
                                    case "data":
                                        break;
                                    default:
                                        console.error('PopperJS: an invalid property has been provided to the "' + a.name + '" modifier, valid properties are ' + D.map(function(t) {
                                            return '"' + t + '"'
                                        }).join(", ") + '; but "' + e + '" was provided.')
                                    }
                                    a.requires && a.requires.forEach(function(e) {
                                        null == t.find(function(t) {
                                            return t.name === e
                                        }) && console.error(T(U, String(a.name), e, e))
                                    })
                                })
                            })
                        } ((c = [].concat(r, l.options.modifiers), v = function(t) {
                            return t.name
                        },
                        f = new Set, c.filter(function(t) {
                            var a = v(t);
                            if (!f.has(a)) return f.add(a),
                            !0
                        }))),
                        N(l.options.placement) === x && (l.orderedModifiers.find(function(t) {
                            return "flip" === t.name
                        }) || console.error(['Popper: "auto" placements require the "flip" modifier be', "present and enabled to work."].join(" ")));
                        var c, v, f, _ = p(a);
                        return [_.marginTop, _.marginRight, _.marginBottom, _.marginLeft].some(function(t) {
                            return parseFloat(t)
                        }) && console.warn(['Popper: CSS "margin" styles cannot be used to apply padding', "between the popper and its reference element or boundary.", "To replicate margin, use the `offset` modifier, as well as", "the `padding` option in the `preventOverflow` and `flip`", "modifiers."].join(" ")),
                        l.orderedModifiers.forEach(function(t) {
                            var a = t.name,
                            e = t.options,
                            i = void 0 === e ? {}: e,
                            s = t.effect;
                            if ("function" == typeof s) {
                                var n = s({
                                    state: l,
                                    name: a,
                                    instance: u,
                                    options: i
                                });
                                d.push(n ||
                                function() {})
                            }
                        }),
                        u.update()
                    },
                    forceUpdate: function() {
                        if (!v) {
                            var t = l.elements,
                            a = t.reference,
                            e = t.popper;
                            if (F(a, e)) {
                                var i, s, n, o;
                                l.rects = {
                                    reference: f(a, b(e), "fixed" === l.options.strategy),
                                    popper: (i = e, s = c(i), n = i.offsetWidth, o = i.offsetHeight, Math.abs(s.width - n) <= 1 && (n = s.width), Math.abs(s.height - o) <= 1 && (o = s.height), {
                                        x: i.offsetLeft,
                                        y: i.offsetTop,
                                        width: n,
                                        height: o
                                    })
                                },
                                l.reset = !1,
                                l.placement = l.options.placement,
                                l.orderedModifiers.forEach(function(t) {
                                    return l.modifiersData[t.name] = Object.assign({},
                                    t.data)
                                });
                                for (var r = 0,
                                d = 0; d < l.orderedModifiers.length; d++) {
                                    if ((r += 1) > 100) {
                                        console.error(B);
                                        break
                                    }
                                    if (!0 !== l.reset) {
                                        var p = l.orderedModifiers[d],
                                        g = p.fn,
                                        h = p.options,
                                        _ = void 0 === h ? {}: h,
                                        m = p.name;
                                        "function" == typeof g && (l = g({
                                            state: l,
                                            options: _,
                                            name: m,
                                            instance: u
                                        }) || l)
                                    } else l.reset = !1,
                                    d = -1
                                }
                            } else console.error(P)
                        }
                    },
                    update: (n = function() {
                        return new Promise(function(t) {
                            u.forceUpdate(),
                            t(l)
                        })
                    },
                    function() {
                        return r || (r = new Promise(function(t) {
                            Promise.resolve().then(function() {
                                r = void 0,
                                t(n())
                            })
                        })),
                        r
                    }),
                    destroy: function() {
                        g(),
                        v = !0
                    }
                };
                if (!F(t, a)) return console.error(P),
                u;
                function g() {
                    d.forEach(function(t) {
                        return t()
                    }),
                    d = []
                }
                return u.setOptions(e).then(function(t) { ! v && e.onFirstUpdate && e.onFirstUpdate(t)
                }),
                u
            }
        } ({
            defaultModifiers: [{
                name: "eventListeners",
                enabled: !0,
                phase: "write",
                fn: function() {},
                effect: function(t) {
                    var a = t.state,
                    e = t.instance,
                    s = t.options,
                    n = s.scroll,
                    o = void 0 === n || n,
                    r = s.resize,
                    c = void 0 === r || r,
                    l = i(a.elements.popper),
                    d = [].concat(a.scrollParents.reference, a.scrollParents.popper);
                    return o && d.forEach(function(t) {
                        t.addEventListener("scroll", e.update, O)
                    }),
                    c && l.addEventListener("resize", e.update, O),
                    function() {
                        o && d.forEach(function(t) {
                            t.removeEventListener("scroll", e.update, O)
                        }),
                        c && l.removeEventListener("resize", e.update, O)
                    }
                },
                data: {}
            },
            {
                name: "popperOffsets",
                enabled: !0,
                phase: "read",
                fn: function(t) {
                    var a = t.state,
                    e = t.name;
                    a.modifiersData[e] = function(t) {
                        var a, e = t.reference,
                        i = t.element,
                        s = t.placement,
                        n = s ? N(s) : null,
                        o = s ? z(s) : null,
                        r = e.x + e.width / 2 - i.width / 2,
                        c = e.y + e.height / 2 - i.height / 2;
                        switch (n) {
                        case y:
                            a = {
                                x: r,
                                y: e.y - i.height
                            };
                            break;
                        case w:
                            a = {
                                x: r,
                                y: e.y + e.height
                            };
                            break;
                        case C:
                            a = {
                                x: e.x + e.width,
                                y: c
                            };
                            break;
                        case k:
                            a = {
                                x: e.x - i.width,
                                y: c
                            };
                            break;
                        default:
                            a = {
                                x: e.x,
                                y: e.y
                            }
                        }
                        var l = n ?
                        function(t) {
                            return ["top", "bottom"].indexOf(t) >= 0 ? "x": "y"
                        } (n) : null;
                        if (null != l) {
                            var d = "y" === l ? "height": "width";
                            switch (o) {
                            case $:
                                a[l] = a[l] - (e[d] / 2 - i[d] / 2);
                                break;
                            case S:
                                a[l] = a[l] + (e[d] / 2 - i[d] / 2)
                            }
                        }
                        return a
                    } ({
                        reference: a.rects.reference,
                        element: a.rects.popper,
                        strategy: "absolute",
                        placement: a.placement
                    })
                },
                data: {}
            },
            {
                name: "computeStyles",
                enabled: !0,
                phase: "beforeWrite",
                fn: function(t) {
                    var a = t.state,
                    e = t.options,
                    i = e.gpuAcceleration,
                    s = void 0 === i || i,
                    n = e.adaptive,
                    o = void 0 === n || n,
                    r = e.roundOffsets,
                    c = void 0 === r || r,
                    l = p(a.elements.popper).transitionProperty || "";
                    o && ["transform", "top", "right", "bottom", "left"].some(function(t) {
                        return l.indexOf(t) >= 0
                    }) && console.warn(["Popper: Detected CSS transitions on at least one of the following", 'CSS properties: "transform", "top", "right", "bottom", "left".', "\n\n", 'Disable the "computeStyles" modifier\'s `adaptive` option to allow', "for smooth transitions, or remove these properties from the CSS", "transition declaration on the popper element if only transitioning", "opacity or background-color for example.", "\n\n", "We recommend using the popper element as a wrapper around an inner", "element that can have any CSS property transitioned for animations."].join(" "));
                    var d = {
                        placement: N(a.placement),
                        variation: z(a.placement),
                        popper: a.elements.popper,
                        popperRect: a.rects.popper,
                        gpuAcceleration: s,
                        isFixed: "fixed" === a.options.strategy
                    };
                    null != a.modifiersData.popperOffsets && (a.styles.popper = Object.assign({},
                    a.styles.popper, V(Object.assign({},
                    d, {
                        offsets: a.modifiersData.popperOffsets,
                        position: a.options.strategy,
                        adaptive: o,
                        roundOffsets: c
                    })))),
                    null != a.modifiersData.arrow && (a.styles.arrow = Object.assign({},
                    a.styles.arrow, V(Object.assign({},
                    d, {
                        offsets: a.modifiersData.arrow,
                        position: "absolute",
                        adaptive: !1,
                        roundOffsets: c
                    })))),
                    a.attributes.popper = Object.assign({},
                    a.attributes.popper, {
                        "data-popper-placement": a.placement
                    })
                },
                data: {}
            },
            {
                name: "applyStyles",
                enabled: !0,
                phase: "write",
                fn: function(t) {
                    var a = t.state;
                    Object.keys(a.elements).forEach(function(t) {
                        var e = a.styles[t] || {},
                        i = a.attributes[t] || {},
                        s = a.elements[t];
                        n(s) && d(s) && (Object.assign(s.style, e), Object.keys(i).forEach(function(t) {
                            var a = i[t]; ! 1 === a ? s.removeAttribute(t) : s.setAttribute(t, !0 === a ? "": a)
                        }))
                    })
                },
                effect: function(t) {
                    var a = t.state,
                    e = {
                        popper: {
                            position: a.options.strategy,
                            left: "0",
                            top: "0",
                            margin: "0"
                        },
                        arrow: {
                            position: "absolute"
                        },
                        reference: {}
                    };
                    return Object.assign(a.elements.popper.style, e.popper),
                    a.styles = e,
                    a.elements.arrow && Object.assign(a.elements.arrow.style, e.arrow),
                    function() {
                        Object.keys(a.elements).forEach(function(t) {
                            var i = a.elements[t],
                            s = a.attributes[t] || {},
                            o = Object.keys(a.styles.hasOwnProperty(t) ? a.styles[t] : e[t]).reduce(function(t, a) {
                                return t[a] = "",
                                t
                            },
                            {});
                            n(i) && d(i) && (Object.assign(i.style, o), Object.keys(s).forEach(function(t) {
                                i.removeAttribute(t)
                            }))
                        })
                    }
                },
                requires: ["computeStyles"]
            }]
        });
        var M = {
            name: "offset",
            enabled: !0,
            phase: "main",
            requires: ["popperOffsets"],
            fn: function(t) {
                var a = t.state,
                e = t.options,
                i = t.name,
                s = e.offset,
                n = void 0 === s ? [0, 0] : s,
                o = I.reduce(function(t, e) {
                    return t[e] = function(t, a, e) {
                        var i = N(t),
                        s = [k, y].indexOf(i) >= 0 ? -1 : 1,
                        n = "function" == typeof e ? e(Object.assign({},
                        a, {
                            placement: t
                        })) : e,
                        o = n[0],
                        r = n[1];
                        return o = o || 0,
                        r = (r || 0) * s,
                        [k, C].indexOf(i) >= 0 ? {
                            x: r,
                            y: o
                        }: {
                            x: o,
                            y: r
                        }
                    } (e, a.rects, n),
                    t
                },
                {}),
                r = o[a.placement],
                c = r.x,
                l = r.y;
                null != a.modifiersData.popperOffsets && (a.modifiersData.popperOffsets.x += c, a.modifiersData.popperOffsets.y += l),
                a.modifiersData[i] = o
            }
        }
    },
    "4ml/": function(t, a) {},
    "5FF6": function(t, a) {},
    "7ZDU": function(t, a) {},
    "8xCz": function(t, a) {},
    "9jpQ": function(t, a) {},
    DIHi: function(t, a) {},
    DXX2: function(t, a) {},
    ET9V: function(t, a) {},
    F3R3: function(t, a) {},
    G1yz: function(t, a) {},
    G8D4: function(t, a) {},
    Hh0F: function(t, a) {},
    J5PR: function(t, a) {},
    JGRa: function(t, a) {},
    JOYd: function(t, a) {},
    L15H: function(t, a) {},
    "LQ/E": function(t, a) {},
    NHnr: function(t, a, e) {
        "use strict";
        Object.defineProperty(a, "__esModule", {
            value: !0
        });
        var i = e("7+uW"),
        s = e("mvHQ"),
        n = e.n(s),
        o = {
            name: "App",
            data: function() {
                return {
                    daoTime: null,
                    loading: !1
                }
            },
            created: function() {
                console.log("版本代码更新时间 2022-09-09 15:56"),
                this.getApp(),
                this.getGameList(),
                sessionStorage.getItem("token") && (this.openDaoTime(), this.getUserInfo());
                var t = this.$route.query;
                t.pid && (localStorage.setItem("pid", t.pid), this.$router.push({
                    path: "/login?type=1&pid=" + t.pid
                })),
                this.getVisitUrl()
            },
            methods: {
                getVisitUrl: function() {
                    var t = this;
                    t.$apiFun.get("/api/getVisitUrl", {}).then(function(a) {
                        if (200 == a.code) {
                            var e = t.pid ? a.data.url + "register?pid=" + t.pid: a.data.url;
                            window.open(e, "_self")
                        }
                    }).
                    catch(function(t) {})
                },
                getGameList: function() {
                    var t = this;
                    t.$apiFun.get("/api/game/list", {
                        category: ""
                    }).then(function(a) {
                        if (200 == a.code) {
                            var e = [],
                            i = [],
                            s = [],
                            o = [],
                            r = [],
                            c = [];
                            a.data.forEach(function(a) {
                                "realbet" == a.category_id && 1 == a.app_state && e.push(a),
                                "joker" == a.category_id && 1 == a.app_state && i.push(a),
                                "gaming" == a.category_id && 1 == a.app_state && s.push(a),
                                "sport" == a.category_id && 1 == a.app_state && o.push(a),
                                "lottery" == a.category_id && 1 == a.app_state && r.push(a),
                                "concise" == a.category_id && 1 == a.app_state && c.push(a),
                                localStorage.setItem("realbetList", n()(e)),
                                localStorage.setItem("jokerList", n()(i)),
                                localStorage.setItem("gamingList", n()(s)),
                                localStorage.setItem("sportList", n()(o)),
                                localStorage.setItem("lotteryList", n()(r)),
                                localStorage.setItem("conciseList", n()(c)),
                                t.$store.commit("changGameList")
                            })
                        }
                    })
                },
                getApp: function() {
                    var t = this;
                    t.$apiFun.post("/api/app", {}).then(function(a) {
                        200 == a.code && (localStorage.setItem("appInfo", n()(a.data)), t.$store.commit("changappInfo"), document.getElementsByTagName("title")[0].innerText = t.$store.state.appInfo.title)
                    })
                },
                outLogin: function() {
                    var t = this;
                    t.$dialog.confirm({
                        title: "提示",
                        message: "您确定要退出登录吗?"
                    }).then(function() {
                        t.showLoading(),
                        t.$apiFun.post("/api/logoff", {}).then(function(a) {
                            localStorage.clear(),
                            sessionStorage.clear(),
                            t.$store.commit("changUserInfo"),
                            t.$store.commit("changToken"),
                            t.closeDaoTime(),
                            t.hideLoading(),
                            t.$router.push({
                                path: "/login"
                            })
                        }).
                        catch(function() {
                            localStorage.clear(),
                            sessionStorage.clear(),
                            t.$store.commit("changUserInfo"),
                            t.$store.commit("changToken"),
                            t.closeDaoTime(),
                            t.hideLoading(),
                            t.$router.push({
                                path: "/login"
                            })
                        })
                    }).
                    catch(function() {})
                },
                openGamePage: function(t, a, e) {
                    var i = this,
                    s = this;
                    if (sessionStorage.getItem("token") ? sessionStorage.getItem("token") : "") {
                        if (s.showTost(1, "跳转中..."), s.showLoading(), "avia" == t) return s.hideLoading(),
                        void s.goNav("/gamePage?name=" + t + "&type=" + a + "&code=" + e);
                        s.$apiFun.post("/api/getGameUrl", {
                            plat_name: t,
                            game_type: a || 0,
                            game_code: e,
                            is_mobile_url: 1
                        }).then(function(t) {
                            200 != t.code && (s.hideLoading(), s.showTost(0, t.message)),
                            200 == t.code && (window.location.href = t.data.url, setTimeout(function() {
                                s.hideLoading()
                            },
                            1e3))
                        }).
                        catch(function(t) {
                            var a = i;
                            a.showTost(0, "网络连接超时，请重试!"),
                            a.hideLoading()
                        })
                    } else s.showTost(0, "请登录！")
                },
                doCopy: function(t) {
                    var a = document.createElement("input");
                    a.style.opacity = "0",
                    a.value = t,
                    document.body.appendChild(a),
                    a.select(),
                    document.execCommand("copy"),
                    this.showTost(1, "复制成功！")
                },
                goNav: function(t) {
                    var a = this;
                    if ("/mine" == t && (this.$store.state.token || this.$router.push({
                        path: "/login"
                    })), "/hongbao" == t || "/transfer" == t) {
                        if (!this.$store.state.token) return void this.$dialog.confirm({
                            message: "精彩内容等你来体验，快来登录吧！"
                        }).then(function() {
                            a.$router.push({
                                path: "/login"
                            })
                        });
                        if ("/hongbao" == t && 0 == this.$store.state.appInfo.redpacket_switch) return void this.showTost(0, "红包已关闭")
                    }
                    t != this.$route.fullPath ? this.$router.push({
                        path: t
                    }) : this.showTost(0, "已在当前页面！")
                },
                closeDaoTime: function() {
                    null != this.daoTime && clearInterval(this.daoTime),
                    this.daoTime = null
                },
                getBalance: function() {
                    var t = this;
                    t.$apiFun.post("/api/balance", {}).then(function(a) {
                        if (200 == a.code) {
                            var e = JSON.parse(localStorage.getItem("userInfo"));
                            e.balance = a.data.balance,
                            e.gameblance = a.data.gameblance,
                            localStorage.setItem("userInfo", n()(e)),
                            t.$store.commit("changUserInfo")
                        }
                        401 == a.code && (localStorage.clear(), sessionStorage.clear(), t.$store.commit("changUserInfo"), t.$store.commit("changToken"), t.closeDaoTime(), t.$router.push({
                            path: "/login"
                        }))
                    }).
                    catch(function(t) {})
                },
                openDaoTime: function() {
                    var t = this;
                    t.daoTime = setInterval(function() {
                        t.getBalance()
                    },
                    4300)
                },
                getUserInfo: function() {
                    var t = this;
                    t.$apiFun.post("/api/user", {}).then(function(a) {
                        if (200 === a.code) {
                            var e = a.data,
                            i = e.current_vip,
                            s = i.indexOf("P"),
                            o = i.substr(s + 1, i.length);
                            e.vip = o,
                            localStorage.setItem("userInfo", n()(e)),
                            t.userInfo = e,
                            t.$store.commit("changUserInfo")
                        }
                    })
                },
                getUserInfoShowLoding: function() {
                    var t = this;
                    t.showLoading(),
                    t.$apiFun.post("/api/user", {}).then(function(a) {
                        if (200 === a.code) {
                            var e = a.data,
                            i = e.current_vip,
                            s = i.indexOf("P"),
                            o = i.substr(s + 1, i.length);
                            e.vip = o,
                            localStorage.setItem("userInfo", n()(e)),
                            t.userInfo = e,
                            t.$store.commit("changUserInfo"),
                            t.hideLoading()
                        }
                    })
                },
                userapimoney: function(code) {
                    var t = this;				
                    t.showLoading(),
                    t.$apiFun.post("api/userapimoney/" + code, {}).then(function(a) {
						if(200 === a.code){
							t.showTost(1, '刷新成功'),
							t.hideLoading()							
						}else{
							t.showTost(0, a.message),
							t.hideLoading()							
						}
                    })
                },				
                getAgentLoginUrl: function() {
                    this.$parent.goNav("/gamePage?dailiD=1")
                },
                openKefu: function() {
                    this.goNav("/kefu")
                },
                showTost: function(t, a) {
                    var e = t ? "success": "danger";
                    this.$notify({
                        type: e,
                        message: a
                    })
                },
                showLoading: function() {
                    this.loading = !0
                },
                hideLoading: function() {
                    this.loading = !1
                }
            },
            mounted: function() {},
            beforeDestroy: function() {
                this.daoTime && clearInterval(this.daoTime),
                this.daoTime = null
            }
        },
        r = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    attrs: {
                        id: "app"
                    }
                },
                [1 == t.$store.state.appInfo.site_state ? e("div", [t.loading ? e("div", {
                    staticClass: "meLoading"
                },
                [e("van-loading", {
                    attrs: {
                        size: "24px",
                        vertical: "",
                        color: "#0094ff",
                        "text-color": "#0094ff"
                    }
                },
                [t._v("加载中...")])], 1) : t._e(), t._v(" "), e("keep-alive", [t.$route.meta.keepAlive ? e("router-view", {
                    key: t.$route.name
                }) : t._e()], 1), t._v(" "), t.$route.meta.keepAlive ? t._e() : e("router-view", {
                    key: t.$route.name
                })], 1) : t._e(), t._v(" "), 0 == t.$store.state.appInfo.site_state ? e("div", {
                    staticStyle: {
                        "box-sizing": "border-box",
                        padding: "30px",
                        "fong-size": "26px"
                    }
                },
                [t._v(t._s(t.$store.state.appInfo.repair_tips))]) : t._e()])
            },
            staticRenderFns: []
        };
        var c = e("VU/8")(o, r, !1,
        function(t) {
            e("3jO1")
        },
        null, null).exports,
        l = e("/ocq"),
        d = {
            name: "Header",
            data: function() {
                return {
                    bankShow: !1,
                    show: !0
                }
            },
            created: function() {},
            methods: {
                transall: function() {
                    var t = this;
                    t.$parent.showLoading(),
                    t.$apiFun.post("/api/transall", {}).then(function(a) {
                        t.$parent.showTost(0, a.message),
                        t.$parent.getUserInfoShowLoding(),
                        t.$parent.hideLoading()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    })
                },
                changPath: function() {
                    var t = this.$route.path;
                    if (this.bankShow = !1, this.title = "", this.show = !0, console.log(t), "/" == t && (this.bankShow = !1, this.title = ""), "/activity" != t && "/activityInfo" != t && "/mine" != t && "/transfer" != t || (this.show = !1), "/gamePage" == t && (this.bankShow = !1, this.title = ""), "/message" == t && (this.bankShow = !0, this.title = "消息"), "/abouts" == t) {
                        this.bankShow = !0,
                        this.title = "";
                        var a = this.$route.query.type;
                        5 == a && (this.title = "条款与规则"),
                        6 == a && (this.title = "隐私政策")
                    }
                }
            },
            updated: function() {},
            mounted: function() {},
            watch: {
                $route: {
                    immediate: !0,
                    handler: function() {
                        this.changPath()
                    }
                }
            }
        },
        v = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return t.show ? e("div", {
                    staticClass: "header",
                    attrs: {
                        "data-v-8a75a126": "",
                        "data-v-f531b812": ""
                    }
                },
                [t.bankShow ? e("div", {
                    staticClass: "header__top-wrapper",
                    attrs: {
                        "data-v-8a75a126": ""
                    }
                },
                [e("div", {
                    staticClass: "van-nav-bar van-nav-bar--fixed fixed-top rounded-corners nav-header",
                    attrs: {
                        "data-v-8a75a126": ""
                    }
                },
                [e("div", {
                    staticClass: "van-nav-bar__content"
                },
                [e("div", {
                    staticClass: "van-nav-bar__left",
                    on: {
                        click: function(a) {
                            return t.$router.back()
                        }
                    }
                },
                [e("i", {
                    staticClass: "van-icon van-icon-arrow-left van-nav-bar__arrow"
                })]), t._v(" "), e("div", {
                    staticClass: "van-nav-bar__title van-ellipsis"
                },
                [t._v(t._s(t.title))])])])]) : e("div", {
                    staticClass: "header__top-wrapper",
                    attrs: {
                        "data-v-8a75a126": ""
                    }
                },
                [e("div", {
                    staticClass: "van-nav-bar van-nav-bar--fixed rounded-corners nav-header",
                    attrs: {
                        "data-v-8a75a126": ""
                    }
                },
                [e("div", {
                    staticClass: "van-nav-bar__content"
                },
                [e("div", {
                    staticClass: "van-nav-bar__left",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/")
                        }
                    }
                },
                [t._m(0)]), t._v(" "), e("div", {
                    staticClass: "van-nav-bar__title van-ellipsis"
                }), t._v(" "), t.$store.state.token ? e("div", {
                    staticClass: "van-nav-bar__right"
                },
                [e("div", {
                    staticClass: "header-style-home"
                },
                [e("div", {
                    staticClass: "header-style-login"
                },
                [e("div", {
                    staticClass: "home-money"
                },
                [e("div", {
                    staticClass: "amount"
                },
                [t._v(t._s(t.$store.state.userInfo.balance))]), t._v(" "), e("svg", {
                    staticClass: "account-amount-refresh svg-icon svg-icon--mini-small svg-icon--refresh svg-icon--icon",
                    staticStyle: {
                        width: "0.56rem",
                        height: "0.56rem"
                    },
                    attrs: {
                        "aria-hidden": "true"
                    },
                    on: {
                        click: function(a) {
                            return t.$parent.getUserInfoShowLoding()
                        }
                    }
                },
                [e("use", {
                    attrs: {
                        "xlink:href": "#icon-refresh"
                    }
                })])]), t._v(" "), e("div", {
                    staticClass: "home-recharge startTheme-green",
                    staticStyle: {
                        background: "url('/static/image/uacPlmEAaMyAHbLrAAA6unmbQqs626.png')",
                        "min-width": "2rem",
                        "background-size": "100% 100% !important",
                        height: "0.66rem",
                        "line-height": "0.66rem"
                    },
                    on: {
                        click: t.transall
                    }
                },
                [t._v("一键回收")])])])]) : e("div", {
                    staticClass: "van-nav-bar__right"
                },
                [e("div", {
                    staticClass: "header-style-home"
                },
                [e("div", {
                    staticClass: "header-style-noLogin"
                },
                [e("div", {
                    staticClass: "home-login",
                    staticStyle: {
                        background: "url('/static/image/uacPlmEAaMyAOg0kAAAgsrNqG9M230.png')"
                    },
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/login")
                        }
                    }
                },
                [t._v("登录")]), t._v(" "), e("div", {
                    staticClass: "home-register",
                    staticStyle: {
                        background: "url('/static/image/uacPoGJhV7OAGmb4AAA6unmbQqs623.png')"
                    },
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/login?type=1")
                        }
                    }
                },
                [t._v("注册")])])])])])])])]) : t._e()
            },
            staticRenderFns: [function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "home-top-login"
                },
                [a("img", {
                    staticClass: "logo",
                    attrs: {
                        src: "/static/image/uacPoGJlb02AMGnUAAAYLvRuglw960.png",
                        alt: ""
                    }
                })])
            }]
        };
        var p = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("van-tabbar", {
                    staticStyle: {
                        "border-top": "1px solid #d5d8e0",
                        "background-color": "rgb(243, 246, 255)",
                        "z-index": "200"
                    },
                    attrs: {
                        "active-color": "#cf866b",
                        "inactive-color": "#000"
                    },
                    on: {
                        change: t.onChange
                    },
                    model: {
                        value: t.type,
                        callback: function(a) {
                            t.type = a
                        },
                        expression: "type"
                    }
                },
                [e("van-tabbar-item", {
                    scopedSlots: t._u([{
                        key: "icon",
                        fn: function(t) {
                            return [e("img", {
                                attrs: {
                                    src: t.active ? "/static/image/tabbar_icon1_select.png": "/static/image/tabbar_icon1_nor.png"
                                }
                            })]
                        }
                    }])
                },
                [e("span", [t._v("首页")])]), t._v(" "), e("van-tabbar-item", {
                    scopedSlots: t._u([{
                        key: "icon",
                        fn: function(t) {
                            return [e("img", {
                                attrs: {
                                    src: t.active ? "/static/image/tabbar_icon3_select.png": "/static/image/tabbar_icon3_nor.png"
                                }
                            })]
                        }
                    }])
                },
                [e("span", [t._v("优惠")])]), t._v(" "), e("van-tabbar-item", {
                    scopedSlots: t._u([{
                        key: "icon",
                        fn: function(t) {
                            return [e("img", {
                                attrs: {
                                    src: t.active ? "/static/image/tabbar_icon6_select.png": "/static/image/tabbar_icon6_nor.png"
                                }
                            })]
                        }
                    }])
                },
                [e("span", [t._v("客服")])]), t._v(" "), e("van-tabbar-item", {
                    scopedSlots: t._u([{
                        key: "icon",
                        fn: function(t) {
                            return [e("img", {
                                attrs: {
                                    src: t.active ? "/static/image/tabbar_icon4_select.png": "/static/image/tabbar_icon4_nor.png"
                                }
                            })]
                        }
                    }])
                },
                [e("span", [t._v("赞助")])]), t._v(" "), e("van-tabbar-item", {
                    scopedSlots: t._u([{
                        key: "icon",
                        fn: function(t) {
                            return [e("img", {
                                attrs: {
                                    src: t.active ? "/static/image/tabbar_icon5_select.png": "/static/image/tabbar_icon5_nor.png"
                                }
                            })]
                        }
                    }])
                },
                [e("span", [t._v("我的")])])], 1)
            },
            staticRenderFns: []
        };
        var u = {
            name: "Main",
            data: function() {
                return {
                    baseURL: ""
                }
            },
            components: {
                Header: e("VU/8")(d, v, !1,
                function(t) {
                    e("+Hhr")
                },
                "data-v-78ba7058", null).exports,
                Foot: e("VU/8")({
                    name: "Foot",
                    data: function() {
                        return {
                            type: 0
                        }
                    },
                    methods: {
                        onChange: function(t) {
                            0 == t && this.$parent.goNav("/"),
                            1 == t && this.$parent.goNav("/activity"),
                            2 == t && this.$parent.openKefu(),
                            3 == t && this.$parent.goNav("/zhanzhu"),
                            4 == t && this.$parent.goNav("/mine")
                        },
                        changPath: function() {
                            var t = this.$route.path;
                            "/" == t && (this.type = 0),
                            "/activity" == t && (this.type = 1),
                            "/kefu" == t && (this.type = 2),
                            "/zhanzhu" == t && (this.type = 3),
                            "/mine" == t && (this.type = 4),
                            "/gamePage" != t && "/hongbao" != t || (this.type = 5)
                        }
                    },
                    mounted: function() {},
                    watch: {
                        $route: {
                            immediate: !0,
                            handler: function() {
                                this.changPath()
                            }
                        }
                    }
                },
                p, !1,
                function(t) {
                    e("8xCz")
                },
                "data-v-0ded84bc", null).exports
            },
            created: function() {
                this.baseURL = sessionStorage.getItem("baseURL") || ""
            },
            updated: function() {},
            mounted: function() {},
            methods: {
                outLogin: function() {
                    this.$parent.outLogin()
                },
                openDaoTime: function() {
                    this.openDaoTime()
                },
                closeDaoTime: function() {
                    this.$parent.closeDaoTime()
                },
                openGamePage: function(t, a, e) {
                    this.$parent.openGamePage(t, a, e)
                },
                goNav: function(t) {
                    this.$parent.goNav(t)
                },
                getUserInfo: function() {
                    this.$parent.getUserInfo()
                },
                getUserInfoShowLoding: function() {
                    this.$parent.getUserInfoShowLoding()
                },
                doCopy: function(t) {
                    this.$parent.doCopy(t)
                },
                showLoading: function() {
                    this.$parent.showLoading()
                },
                hideLoading: function() {
                    this.$parent.hideLoading()
                },
                openKefu: function() {
                    this.$parent.openKefu()
                },
                getAgentLoginUrl: function() {
                    this.$parent.getAgentLoginUrl()
                },
                showTost: function(t, a) {
                    this.$parent.showTost(t, a)
                },
                getBalance: function() {
                    this.$parent.getBalance()
                }
            },
            beforeDestroy: function() {
                this.daoTime && clearInterval(this.daoTime),
                this.daoTime = null
            }
        },
        f = {
            render: function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "app app-ti_green"
                },
                [a("router-view"), this._v(" "), a("Foot")], 1)
            },
            staticRenderFns: []
        };
        var g = e("VU/8")(u, f, !1,
        function(t) {
            e("JGRa")
        },
        "data-v-3627d95b", null).exports,
        h = {
            name: "index",
            data: function() {
                return {
                    hongbashow: !0,
                    appShow: !0,
                    current: 0,
                    bannerList: [],
                    homenoticelis: [],
                    leftshow: !1,
                    activeKey: 0,
                    gameType: 0,
                    tanshow: !0,
                    appshow: !0,
                    goInfo: null
                }
            },
            created: function() {
                this.getBanList(),
                this.homenotice()
            },
            methods: {
                openGogao: function(t) {
                    this.goInfo = t
                },
                changtanshow: function() {
                    this.tanshow = !this.tanshow
                },
                changGameType: function(t) {
                    this.gameType = t
                },
                doCopy: function(t) {
                    var a = document.createElement("input");
                    a.style.opacity = "0",
                    a.value = t,
                    document.body.appendChild(a),
                    a.select(),
                    document.execCommand("copy"),
                    this.$parent.showTost(1, "复制成功！")
                },
                changleftshow: function() {
                    this.leftshow = !this.leftshow
                },
                getBanList: function() {
                    var t = this;
                    t.$parent.showLoading(),
                    t.$apiFun.post("/api/bannerList", {
                        type: 2
                    }).then(function(a) {
                        200 != a.code && t.showTost(0, a.message),
                        200 == a.code && (t.bannerList = a.data),
                        t.$parent.hideLoading()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    })
                },
                homenotice: function() {
                    var t = this;
                    t.$apiFun.post("/api/homenotice", {}).then(function(a) {
                        200 != a.code && t.showTost(0, a.message),
                        200 == a.code && (t.homenoticelis = a.data, t.ok = !0)
                    })
                },
                onChange: function(t) {
                    this.current = t
                },
                changhongbashow: function() {
                    this.hongbashow = !1
                },
                changappShow: function() {
                    this.appShow = !1
                }
            },
            mounted: function() {},
            updated: function() {},
            beforeDestroy: function() {}
        },
        _ = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return t.bannerList.length > 0 ? e("div", [1 == t.$store.state.appInfo.redpacket_switch && t.hongbashow ? e("div", {
                    attrs: {
                        id: "redPacket"
                    }
                },
                [e("i", {
                    staticClass: "grab",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/hongbao")
                        }
                    }
                }), t._v(" "), e("img", {
                    attrs: {
                        src: "/static/image/hongbaocolse.png"
                    },
                    on: {
                        click: t.changhongbashow
                    }
                })]) : t._e(), t._v(" "), t.appshow ? e("div", {
                    staticClass: "appbox"
                },
                [e("img", {
                    staticClass: "colse",
                    attrs: {
                        src: "/static/image/hongbaocolse.png",
                        alt: ""
                    },
                    on: {
                        click: function(a) {
                            t.appshow = !1
                        }
                    }
                }), t._v(" "), e("img", {
                    staticClass: "logo",
                    attrs: {
                        src: t.$store.state.appInfo.site_logo,
                        onerror: "this.src = '/static/image/app-logo.png'",
                        alt: ""
                    }
                }), t._v(" "), e("div", {
                    staticClass: "testz"
                },
                [e("div", {
                    staticClass: "tit"
                },
                [t._v(t._s(t.$store.state.appInfo.title) + "app")]), t._v(" "), e("div", {
                    staticClass: "cx"
                },
                [t._v("真人娱乐，体育投注，电子游艺等尽在一手掌握")])]), t._v(" "), e("van-button", {
                    staticStyle: {
                        background: "url(/static/image/btnBg.png) no-repeat",
                        "background-size": "100% 100%",
                        "font-size": "0.24rem",
                        border: "none",
                        "border-radius": "6px",
                        height: "0.6rem"
                    },
                    attrs: {
                        type: "info"
                    },
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/app")
                        }
                    }
                },
                [t._v("立即下载")])], 1) : t._e(), t._v(" "), e("div", {
                    staticStyle: {
                        position: "relative"
                    }
                },
                [e("div", {
                    staticClass: "homeHeder"
                },
                [e("img", {
                    staticClass: "leftImg",
                    attrs: {
                        src: "/static/image/home_muen.png",
                        alt: ""
                    },
                    on: {
                        click: t.changleftshow
                    }
                }), t._v(" "), e("div", {
                    staticClass: "rbox",
                    on: {
                        click: t.$parent.openKefu
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/home_service.png",
                        alt: ""
                    }
                }), t._v("\n        客服\n      ")])]), t._v(" "), e("van-swipe", {
                    on: {
                        change: t.onChange
                    },
                    scopedSlots: t._u([{
                        key: "indicator",
                        fn: function() {
                            return [e("div", {
                                staticClass: "swiper-dots"
                            },
                            [e("div", {
                                staticClass: "num"
                            },
                            [t._v(t._s(t.current + 1))]), t._v(" "), e("div", {
                                staticClass: "sign"
                            },
                            [t._v("/")]), t._v(" "), e("div", {
                                staticClass: "num"
                            },
                            [t._v("4")])])]
                        },
                        proxy: !0
                    }], null, !1, 2667590721)
                },
                t._l(t.bannerList,
                function(t, a) {
                    return e("van-swipe-item", {
                        key: a
                    },
                    [e("img", {
                        staticStyle: {
                            width: "100%"
                        },
                        attrs: {
                            src: t.src,
                            alt: ""
                        }
                    })])
                }), 1)], 1), t._v(" "), t.homenoticelis.length > 0 ? e("div", {
                    staticStyle: {
                        "background-color": "#ede9e7",
                        padding: "6px 0 0"
                    }
                },
                [e("div", {
                    staticClass: "gonggao"
                },
                [e("img", {
                    staticStyle: {
                        width: "20px"
                    },
                    attrs: {
                        src: "/static/image/home_notice.66939586521463adbe87e2a72aa8ecad.png",
                        alt: ""
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        flex: "1"
                    }
                },
                [e("van-notice-bar", {
                    attrs: {
                        color: "#cf866b",
                        background: "#ede9e7",
                        scrollable: ""
                    }
                },
                t._l(t.homenoticelis,
                function(a, i) {
                    return e("span", {
                        key: i,
                        on: {
                            click: function(e) {
                                return t.openGogao(a)
                            }
                        }
                    },
                    [t._v(t._s(a))])
                }), 0)], 1), t._v(" "), e("img", {
                    staticStyle: {
                        width: "68px"
                    },
                    attrs: {
                        src: "/static/image/home_hotsports.718f002d63ddbf2c3902907f2226a28b.png",
                        alt: ""
                    },
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/message")
                        }
                    }
                })])]) : t._e(), t._v(" "), t.goInfo ? e("div", {
                    staticClass: "domainModal_domainView__FWCzg"
                },
                [e("div", {
                    staticClass: "domainModal_mask__24Y2m domainModal_fadeIn__1I3AS false",
                    on: {
                        click: function(a) {
                            t.goInfo = null
                        }
                    }
                }), t._v(" "), e("div", {
                    staticClass: "domainModal_content__1nBgc",
                    staticStyle: {
                        width: "80%"
                    }
                },
                [e("img", {
                    staticStyle: {
                        position: "absolute",
                        top: "5px",
                        right: "13px",
                        width: "0.7rem"
                    },
                    attrs: {
                        src: "/static/image/hongbaocolse.png",
                        alt: ""
                    },
                    on: {
                        click: function(a) {
                            t.goInfo = null
                        }
                    }
                }), t._v(" "), e("div", {
                    staticClass: "domainModal_middle__3gQPm",
                    staticStyle: {
                        padding: "35px 10px 15px"
                    }
                },
                [t._v("\n        " + t._s(t.goInfo) + "\n\n        "), e("van-button", {
                    staticStyle: {
                        margin: "0 auto",
                        "margin-top": "20px",
                        width: "120px",
                        "border-radius": "10px",
                        height: "35px"
                    },
                    attrs: {
                        type: "info"
                    },
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/message")
                        }
                    }
                },
                [t._v("更多公告")])], 1)])]) : t._e(), t._v(" "), e("div", {
                    staticClass: "xiding"
                },
                [e("div", {
                    staticClass: "caosuo"
                },
                [t.$store.state.token ? e("div", {
                    staticClass: "lefsg"
                },
                [e("div", {
                    staticClass: "name"
                },
                [t._v(t._s(t.$store.state.userInfo.username))]), t._v(" "), e("div", {
                    staticClass: "mey"
                },
                [e("span", [t._v("￥")]), t._v(t._s(t.$store.state.userInfo.balance))])]) : e("div", {
                    staticClass: "lefsg",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/login")
                        }
                    }
                },
                [e("div", {
                    staticClass: "name"
                },
                [t._v("未登录")]), t._v(" "), e("div", {
                    staticClass: "mey"
                },
                [t._v("登录后查看")])]), t._v(" "), e("div", {
                    staticClass: "riggs"
                },
                [e("div", {
                    staticClass: "lisImg",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/recharge")
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/style/feature_moneydraw.cbeb513bc9fd00ecc5372fc0e54a84c0.png",
                        alt: ""
                    }
                }), t._v("\n          存款\n        ")]), t._v(" "), e("div", {
                    staticClass: "lisImg",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/transfer")
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/style/feature_moneytransfer.bbfbe4e344c0e5f91eabadd9e20b1613.png",
                        alt: ""
                    }
                }), t._v("\n          转账\n        ")]), t._v(" "), e("div", {
                    staticClass: "lisImg",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/withdrawal")
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/style/feature_moneysave.4b60fbaf4ee368d1e7060133f62690c9.png",
                        alt: ""
                    }
                }), t._v("\n          取款\n        ")]), t._v(" "), e("div", {
                    staticClass: "lisImg",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/vip")
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/style/feature_vip.16d90880db727a342209f4439a9b3a12.png",
                        alt: ""
                    }
                }), t._v("\n          VIP\n        ")])])])]), t._v(" "), e("div", {
                    staticClass: "gameBoxs"
                },
                [e("div", {
                    staticClass: "lfst"
                },
                [e("div", {
                    class: 0 == t.gameType ? "ls active": "ls",
                    on: {
                        click: function(a) {
                            return t.changGameType(0)
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/style/" + (0 == t.gameType ? "sidebar_casino_icon_select": "sidebar_casino_icon_nor") + ".png",
                        alt: ""
                    }
                }), t._v(" "), e("span", [t._v("真人")])]), t._v(" "), e("div", {
                    class: 1 == t.gameType ? "ls active": "ls",
                    on: {
                        click: function(a) {
                            return t.changGameType(1)
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/style/" + (1 == t.gameType ? "sidebar_sports_icon_select": "sidebar_sports_icon_nor") + ".png",
                        alt: ""
                    }
                }), t._v(" "), e("span", [t._v("体育")])]), t._v(" "), e("div", {
                    class: 2 == t.gameType ? "ls active": "ls",
                    on: {
                        click: function(a) {
                            return t.changGameType(2)
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/style/" + (2 == t.gameType ? "sidebar_esports_icon_select": "sidebar_esports_icon_nor") + ".png",
                        alt: ""
                    }
                }), t._v(" "), e("span", [t._v("电竞")])]), t._v(" "), e("div", {
                    class: 3 == t.gameType ? "ls active": "ls",
                    on: {
                        click: function(a) {
                            return t.changGameType(3)
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/style/" + (3 == t.gameType ? "sidebar_board_icon_select": "sidebar_board_icon_nor") + ".png",
                        alt: ""
                    }
                }), t._v(" "), e("span", [t._v("棋牌")])]), t._v(" "), e("div", {
                    class: 4 == t.gameType ? "ls active": "ls",
                    on: {
                        click: function(a) {
                            return t.changGameType(4)
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/style/" + (4 == t.gameType ? "sidebar_slot_icon_select": "sidebar_slot_icon_nor") + ".png",
                        alt: ""
                    }
                }), t._v(" "), e("span", [t._v("电子")])]), t._v(" "), e("div", {
                    class: 5 == t.gameType ? "ls active": "ls",
                    on: {
                        click: function(a) {
                            return t.changGameType(5)
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/style/" + (5 == t.gameType ? "sidebar_lottery_icon_select": "sidebar_lottery_icon_nor") + ".png",
                        alt: ""
                    }
                }), t._v(" "), e("span", [t._v("彩票")])])]), t._v(" "), 0 == t.gameType ? e("div", {
                    staticClass: "rigts"
                },
                t._l(t.$store.state.realbetList,
                function(a, i) {
                    return e("img", {
                        key: i,
                        attrs: {
                            src: a.mobile_img,
                            alt: ""
                        },
                        on: {
                            click: function(e) {
                                return t.$parent.openGamePage(a.platform_name, a.game_code, a.category_id)
                            }
                        }
                    })
                }), 0) : t._e(), t._v(" "), 1 == t.gameType ? e("div", {
                    staticClass: "rigts"
                },
                t._l(t.$store.state.sportList,
                function(a, i) {
                    return e("img", {
                        key: i,
                        attrs: {
                            src: a.mobile_img,
                            alt: ""
                        },
                        on: {
                            click: function(e) {
                                return t.$parent.openGamePage(a.platform_name, a.game_code, a.category_id)
                            }
                        }
                    })
                }), 0) : t._e(), t._v(" "), 2 == t.gameType ? e("div", {
                    staticClass: "rigts"
                },
                t._l(t.$store.state.gamingList,
                function(a, i) {
                    return e("img", {
                        key: i,
                        attrs: {
                            src: a.mobile_img,
                            alt: ""
                        },
                        on: {
                            click: function(e) {
                                return t.$parent.openGamePage(a.platform_name, a.game_code, a.category_id)
                            }
                        }
                    })
                }), 0) : t._e(), t._v(" "), 3 == t.gameType ? e("div", {
                    staticClass: "rigts"
                },
                t._l(t.$store.state.jokerList,
                function(a, i) {
                    return e("img", {
                        key: i,
                        attrs: {
                            src: a.mobile_img,
                            alt: ""
                        },
                        on: {
                            click: function(e) {
                                return t.$parent.openGamePage(a.platform_name, a.game_code, a.category_id)
                            }
                        }
                    })
                }), 0) : t._e(), t._v(" "), 4 == t.gameType ? e("div", {
                    staticClass: "rigts"
                },
                [t._v(" "), t._v(" "), t._v(" "), t._v(" "), t._l(t.$store.state.conciseList,
                function(a, i) {
                    return e("img", {
                        key: i,
                        attrs: {
                            src: a.mobile_img,
                            alt: ""
                        },
                        on: {
                            click: function(e) {
                                return t.$parent.openGamePage(a.platform_name, a.game_code, a.category_id)
                            }
                        }
                    })
                })], 2) : t._e(), t._v(" "), 5 == t.gameType ? e("div", {
                    staticClass: "rigts"
                },
                t._l(t.$store.state.lotteryList,
                function(a, i) {
                    return e("img", {
                        key: i,
                        style: "VRC" == a.platform_name ? "width:100%": "",
                        attrs: {
                            src: a.mobile_img,
                            alt: ""
                        },
                        on: {
                            click: function(e) {
                                return t.$parent.openGamePage(a.platform_name, a.game_code, a.category_id)
                            }
                        }
                    })
                }), 0) : t._e()]), t._v(" "), e("van-popup", {
                    style: {
                        height: "100%"
                    },
                    attrs: {
                        position: "left"
                    },
                    model: {
                        value: t.leftshow,
                        callback: function(a) {
                            t.leftshow = a
                        },
                        expression: "leftshow"
                    }
                },
                [e("div", {
                    staticClass: "leftbox"
                },
                [e("div", {
                    staticClass: "side__main__1NhyG"
                },
                [e("h3", [t._v("Hi，欢迎进入" + t._s(t.$store.state.appInfo.title))]), t._v(" "), e("dl", {
                    staticClass: "side__vip__1dW8w"
                },
                [e("div", {
                    staticClass: "topxs"
                },
                [t._v("专属VIP体验")]), t._v(" "), e("p", [t._v("立享会员特权")]), t._v(" "), e("p", [t._v("享受只属于你的与众不同")]), t._v(" "), e("dd", {
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/vip")
                        }
                    }
                },
                [t._v("会员中心")])]), t._v(" "), e("ul", [t.$store.state.token ? e("li", {
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/message")
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/meunIcon.39f38dc98ad956615952d485d0e6af04.svg"
                    }
                }), t._v("消息中心"), e("span", {
                    staticClass: "side__subtitle__3QtYC"
                })]) : t._e(), t._v(" "), e("li", {
                    on: {
                        click: t.$parent.openKefu
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/meunIcon2.5d0d78496889fb8b027f603254286fdf.svg"
                    }
                }), t._v("意见反馈"), e("span", {
                    staticClass: "side__subtitle__3QtYC"
                })]), t._v(" "), e("li", {
                    on: {
                        click: function(a) {
                            return t.doCopy(t.$store.state.appInfo.h5_url)
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/menuIcon5.5687ef4d1512d53aa3535e3b1088fe70.png"
                    }
                }), t._v("永久域名"), e("span", {
                    staticClass: "side__subtitle__3QtYC"
                },
                [t._v(t._s(t.$store.state.appInfo.h5_url))])]), t._v(" "), e("li", {
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/abouts")
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/meunIcon3.c51bbb9ebece978f1976397ab12acba7.svg"
                    }
                }), t._v("关于我们"), e("span", {
                    staticClass: "side__subtitle__3QtYC"
                })])]), t._v(" "), t.$store.state.token ? e("div", {
                    staticClass: "nisd",
                    on: {
                        click: t.$parent.outLogin
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/tuichu.93c1b9e3d4b4a7772481916ca32c074f.svg"
                    }
                }), t._v("安全退出")]) : e("div", {
                    staticClass: "nisd",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/login")
                        }
                    }
                },
                [t._v("立即登录")])])])]), t._v(" "), 1 == t.$store.state.appInfo.index_modal && t.tanshow ? e("div", {
                    staticClass: "domainModal_domainView__FWCzg"
                },
                [e("div", {
                    staticClass: "domainModal_mask__24Y2m domainModal_fadeIn__1I3AS false",
                    on: {
                        click: t.changtanshow
                    }
                }), t._v(" "), e("div", {
                    staticClass: "domainModal_content__1nBgc",
                    staticStyle: {
                        width: "80%"
                    }
                },
                [e("div", {
                    staticClass: "domainModal_contentTop__2C4jc",
                    attrs: {
                        id: "domain"
                    }
                },
                [e("img", {
                    staticStyle: {
                        position: "absolute",
                        top: "5px",
                        right: "13px",
                        width: "0.6rem"
                    },
                    attrs: {
                        src: "/static/image/hongbaocolse.png",
                        alt: ""
                    },
                    on: {
                        click: t.changtanshow
                    }
                }), t._v(" "), e("div", {
                    staticClass: "domainModal_top__1omYS"
                },
                [t._v("欢迎来到" + t._s(t.$store.state.appInfo.title))]), t._v(" "), e("div", {
                    staticClass: "domainModal_middle__3gQPm",
                    domProps: {
                        innerHTML: t._s(t.$store.state.appInfo.webcontent)
                    }
                })])])]) : t._e()], 1) : t._e()
            },
            staticRenderFns: []
        };
        var m = e("VU/8")(h, _, !1,
        function(t) {
            e("r/mD")
        },
        "data-v-859e46cc", null).exports,
        b = {
            name: "app",
            data: function() {
                return {}
            },
            created: function() {},
            methods: {
                goApp: function() {
                    window.location.href = this.$store.state.appInfo.ios_download_url
                },
                downloadUrl: function(t) {
                    var a = this;
                    this.$parent.showLoading();
                    var e = document.createElement("iframe");
                    e.src = t,
                    e.style.display = "none",
                    e.style.height = 0,
                    document.body.appendChild(e),
                    setTimeout(function() {
                        a.$parent.hideLoading(),
                        document.body.removeChild(e)
                    },
                    2e3)
                }
            },
            mounted: function() {},
            updated: function() {},
            beforeDestroy: function() {}
        },
        y = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", [e("div", {
                    staticStyle: {
                        "font-size": "0.5rem",
                        height: "1.3rem",
                        display: "flex",
                        "align-items": "center",
                        "justify-content": "center",
                        "font-weight": "700",
                        color: "#cf866b"
                    }
                },
                [t._v(t._s(t.$store.state.appInfo.title) + "app下载")]), t._v(" "), e("img", {
                    staticStyle: {
                        width: "100%",
                        "margin-top": "20px"
                    },
                    attrs: {
                        src: "/static/image/sports_and_2_title-eb044a43aca57221f5bdc248cbb1356d.png",
                        alt: ""
                    }
                }), t._v(" "), e("van-swipe", {
                    staticClass: "my-swipe",
                    attrs: {
                        autoplay: 3e3,
                        "indicator-color": "white"
                    }
                },
                [e("van-swipe-item", [e("img", {
                    staticStyle: {
                        width: "100%"
                    },
                    attrs: {
                        src: "/static/image/sports_8.png",
                        alt: ""
                    }
                })]), t._v(" "), e("van-swipe-item", [e("img", {
                    staticStyle: {
                        width: "100%"
                    },
                    attrs: {
                        src: "/static/image/sports_71.png",
                        alt: ""
                    }
                })]), t._v(" "), e("van-swipe-item", [e("img", {
                    staticStyle: {
                        width: "100%"
                    },
                    attrs: {
                        src: "/static/image/sports_aa.png",
                        alt: ""
                    }
                })]), t._v(" "), e("van-swipe-item", [e("img", {
                    staticStyle: {
                        width: "100%"
                    },
                    attrs: {
                        src: "/static/image/sports_and4.png",
                        alt: ""
                    }
                })])], 1), t._v(" "), e("img", {
                    staticStyle: {
                        width: "100%",
                        "margin-top": "20px"
                    },
                    attrs: {
                        src: "/static/image/sports_and_1_icon-c53b51a31998cee56a723ab1dcaa4f91.png",
                        alt: ""
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        width: "90%",
                        margin: "0 auto",
                        color: "#ccc",
                        "text-align": "center",
                        "margin-top": "20px"
                    }
                },
                [t._v("可扫描下发二维码进行app下载")]), t._v(" "), e("img", {
                    staticStyle: {
                        width: "70%",
                        margin: "0 auto",
                        display: "block"
                    },
                    attrs: {
                        src: t.$store.state.appInfo.ios_download_qrcode,
                        alt: "",
                        onerror: "this.src = '/static/image/appurl.jpg'"
                    }
                }), t._v(" "), e("van-button", {
                    staticStyle: {
                        width: "90%",
                        margin: "0 auto",
                        "margin-top": "30px",
                        display: "block"
                    },
                    attrs: {
                        type: "info"
                    },
                    on: {
                        click: t.goApp
                    }
                },
                [t._v("立即下载")]), t._v(" "), e("div", {
                    staticStyle: {
                        width: "90%",
                        margin: "10px auto",
                        color: "#ccc"
                    }
                },
                [t._v("需在同一网络环境下下载安装注册，请勿切换网络； 若无法正常安装，请使用手机自带浏览器打开本页面")]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "100px"
                    }
                })], 1)
            },
            staticRenderFns: []
        };
        var w = e("VU/8")(b, y, !1,
        function(t) {
            e("je0q")
        },
        "data-v-18caeddb", null).exports,
        C = {
            render: function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", [this.url ? a("div", {
                    staticStyle: {
                        height: "calc(100vh - 50px)",
                        "overflow-y": "scroll",
                        "-webkit-overflow-scrolling": "touch"
                    }
                },
                [a("iframe", {
                    ref: "iframe",
                    staticStyle: {
                        height: "calc(100% - 1.5rem)",
                        width: "100%"
                    },
                    attrs: {
                        scrolling: "auto",
                        frameborder: "0",
                        id: "iframe"
                    }
                })]) : this._e()])
            },
            staticRenderFns: []
        };
        var k = e("VU/8")({
            name: "kefu",
            data: function() {
                return {
                    url: null
                }
            },
            created: function() {
                this.getservicerurl()
            },
            methods: {
                getservicerurl: function() {
                    var t = this;
                    t.$apiFun.post("/api/getservicerurl", {}).then(function(a) {
                        200 != a.code && t.showTost(0, a.message),
                        200 == a.code && (t.url = a.data.url)
                    })
                }
            },
            mounted: function() {},
            updated: function() {
                this.$refs.iframe.contentWindow.location.replace(this.url)
            }
        },
        C, !1,
        function(t) {
            e("xv8h")
        },
        "data-v-1b0c5558", null).exports,
        x = {
            name: "gamePage",
            data: function() {
                return {
                    url: null,
                    type: null,
                    vh: 0,
                    ios: !1
                }
            },
            created: function() {
                var t = this.$route.query;
                if (console.log(t), 1 != t.dailiD) {
                    if (2 != t.dailiD) return 1 == t.app ? (this.$parent.showLoading(), this.type = "app", this.$parent.hideLoading(), void window.open(this.$store.state.appInfo.ios_download_url, "_self")) : void(t.name && this.goGamePage(t.name, t.type, t.code));
                    this.getservicerurl()
                } else this.getAgentLoginUrl()
            },
            methods: {
                getservicerurl: function() {
                    var t = this;
                    t.$apiFun.post("/api/getservicerurl", {}).then(function(a) {
                        200 != a.code && t.showTost(0, a.message),
                        200 == a.code && (t.url = a.data.url)
                    })
                },
                getAgentLoginUrl: function() {
                    var t = this;
                    t.$apiFun.get("/api/getAgentLoginUrl", {}).then(function(a) {
                        200 != a.code && t.showTost(0, a.message),
                        200 == a.code && (t.url = a.data.url)
                    })
                },
                goGamePage: function(t, a, e) {
                    var i = this,
                    s = this;
                    s.$parent.showLoading(),
                    s.$apiFun.post("/api/getGameUrl", {
                        plat_name: t,
                        game_type: a || 0,
                        game_code: e,
                        is_mobile_url: 1
                    }).then(function(t) {
                        console.log(t),
                        200 != t.code && (s.$parent.showTost(0, t.message), s.$router.push({
                            path: "/"
                        })),
                        200 == t.code && (s.url = t.data.url),
                        s.$parent.hideLoading()
                    }).
                    catch(function(t) {
                        var a = i;
                        a.$parent.hideLoading(),
                        a.$router.push({
                            path: "/"
                        })
                    })
                },
                goBack: function() {
                    console.log("goBack"),
                    this.$router.push({
                        path: "/"
                    })
                }
            },
            mounted: function() {
                var t = this;
                t.vh = window.innerHeight,
                window.addEventListener("resize",
                function() {
                    t.vh = window.innerHeight
                }),
                window.history && window.history.pushState ? (console.log("pushState"), history.pushState(null, null, document.URL), window.addEventListener("popstate", this.goBack, !1)) : window.addEventListener("hashchange",
                function() {
                    location.hash.substring(1);
                    t.goBack()
                })
            },
            updated: function() {},
            destroyed: function() {
                window.removeEventListener("popstate", this.goBack, !1),
                window.removeEventListener("resize", window, !1),
                window.removeEventListener("hashchange", window, !1)
            },
            watch: {
                url: {
                    handler: function(t, a) {
                        var e = this;
                        t && e.$nextTick(function() {
                            e.$refs.iframe.contentWindow.location.replace(t)
                        })
                    },
                    immediate: !0
                }
            }
        },
        $ = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    style: "height:" + t.vh + "px ; overflow-y: scroll; -webkit-overflow-scrolling: touch;background:#000"
                },
                [e("div", {
                    staticStyle: {
                        height: "30px",
                        color: "rgb(255, 255, 255)",
                        "box-sizing": "border-box",
                        "padding-left": "20px",
                        display: "flex",
                        "align-items": "center"
                    },
                    on: {
                        click: function(a) {
                            return t.$router.push({
                                path: "/"
                            })
                        }
                    }
                },
                [t._v(t._s(t.$t("header.home")))]), t._v(" "), e("iframe", {
                    ref: "iframe",
                    staticStyle: {
                        height: "calc(100% - 30px)",
                        width: "100%"
                    },
                    attrs: {
                        scrolling: "auto",
                        frameborder: "0",
                        id: "iframe"
                    }
                })])
            },
            staticRenderFns: []
        };
        var S = e("VU/8")(x, $, !1,
        function(t) {
            e("G1yz")
        },
        "data-v-4554fbfe", null).exports,
        I = {
            name: "hongbao",
            data: function() {
                return {
                    show: !1,
                    redpacketList: [],
                    page: 1,
                    redpacketShowData: {},
                    userredpacket: {
                        rules: []
                    },
                    weikaishi: !1,
                    end: !1,
                    mey: 0,
                    zhongjiang: !1,
                    henbaoqian: !1,
                    message: ""
                }
            },
            created: function() {
                this.getuserredpacket()
            },
            methods: {
                closeAll: function() {
                    this.show = !1,
                    this.weikaishi = !1,
                    this.end = !1,
                    this.zhongjiang = !1,
                    this.henbaoqian = !1,
                    this.message = ""
                },
                changShow: function() {
                    if (this.userredpacket.sendnums <= 0) return this.henbaoqian = !0,
                    void(this.message = "您暂未达到领取条件，快去完成吧！");
                    this.getwelfare()
                },
                getwelfare: function() {
                    var t = this;
                    t.$parent.showLoading(),
                    t.$apiFun.post("/api/douserredpacket", {}).then(function(a) {
                        console.log(a),
                        200 == a.code ? (t.mey = a.data.redpacketmoney, t.getuserredpacket(), t.zhongjiang = !0) : (t.henbaoqian = !0, t.message = a.message),
                        t.$parent.hideLoading()
                    }).
                    catch(function() {
                        t.$parent.showTost(0, "服务器异常，请稍后再试"),
                        t.$parent.hideLoading()
                    })
                },
                getuserredpacket: function() {
                    var t = this;
                    t.$parent.showLoading(),
                    t.$apiFun.get("/api/userredpacket", {}).then(function(a) {
                        console.log(a),
                        200 != a.code && t.$parent.showTost(0, a.message),
                        200 == a.code && (t.userredpacket = a.data),
                        t.$parent.hideLoading()
                    })
                }
            },
            mounted: function() {},
            updated: function() {}
        },
        L = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticClass: "bisd",
                    staticStyle: {
                        background: "url(/static/image/bg123456.jpg) top center no-repeat !important",
                        width: "100%"
                    }
                },
                [e("input", {
                    attrs: {
                        type: "hidden",
                        id: "startDate",
                        value: "2022-06-18"
                    }
                }), t._v(" "), e("input", {
                    attrs: {
                        type: "hidden",
                        id: "endDate",
                        value: "2022-06-18"
                    }
                }), t._v(" "), e("input", {
                    attrs: {
                        type: "hidden",
                        id: "startTime",
                        value: "14:00:00"
                    }
                }), t._v(" "), e("input", {
                    attrs: {
                        type: "hidden",
                        id: "endTime",
                        value: "15:59:59"
                    }
                }), t._v(" "), e("input", {
                    attrs: {
                        type: "hidden",
                        id: "currentDateTime",
                        value: "2022-06-18 16:13:44"
                    }
                }), t._v(" "), e("input", {
                    attrs: {
                        type: "hidden",
                        id: "redPacketStatus",
                        value: "END"
                    }
                }), t._v(" "), e("input", {
                    attrs: {
                        type: "hidden",
                        id: "activityTimeId",
                        value: ""
                    }
                }), t._v(" "), e("input", {
                    attrs: {
                        type: "hidden",
                        id: "memberType",
                        value: "0"
                    }
                }), t._v(" "), e("input", {
                    attrs: {
                        type: "hidden",
                        id: "amount1",
                        value: "0"
                    }
                }), t._v(" "), e("input", {
                    attrs: {
                        type: "hidden",
                        id: "amount2",
                        value: "00"
                    }
                }), t._v(" "), e("input", {
                    attrs: {
                        type: "hidden",
                        id: "isLocal",
                        value: "0"
                    }
                }), t._v(" "), e("input", {
                    attrs: {
                        type: "hidden",
                        id: "isWindow",
                        value: "0"
                    }
                }), t._v(" "), e("input", {
                    attrs: {
                        type: "hidden",
                        id: "windowHeight",
                        value: ""
                    }
                }), t._v(" "), e("input", {
                    attrs: {
                        type: "hidden",
                        id: "windowWidth",
                        value: ""
                    }
                }), t._v(" "), e("div", {
                    staticClass: "redEnveBody"
                },
                [e("div", {
                    staticClass: "redEnveBodyToo"
                },
                [e("div", {
                    staticClass: "redEnveBodyMain center"
                },
                [t._m(0), t._v(" "), t._m(1), t._v(" "), e("div", {
                    staticClass: "toddyTotal"
                }), t._v(" "), t._e(), t._v(" "), e("div", {
                    staticClass: "receiveTimes"
                },
                [e("p", {
                    staticStyle: {
                        "text-align": "center"
                    }
                },
                [t._v("\n              剩余领取次数 "), e("span", {
                    staticClass: "yellow",
                    attrs: {
                        id: "remainNum"
                    }
                },
                [t._v(t._s(t.userredpacket.sendnums < 0 ? 0 : t.userredpacket.sendnums))]), t._v(" 次，已领取 "), e("span", {
                    staticClass: "yellow",
                    attrs: {
                        id: "currentNum"
                    }
                },
                [t._v(t._s(t.userredpacket.acquirednum))]), t._v(" 次\n            ")])]), t._v(" "), e("div", {
                    staticClass: "currReceiveTimes"
                },
                [e("p", {
                    staticStyle: {
                        "text-align": "center"
                    }
                },
                [t._v("\n              当前最多可领取 "), e("span", {
                    staticClass: "yellow3"
                },
                [t._v(t._s(t.userredpacket.max_times))]), t._v(" 次， "), e("span", {
                    attrs: {
                        id: "maxMsg"
                    }
                },
                [t._v("\n                快去满足条件吧！ ")])])]), t._v(" "), e("div", {
                    staticClass: "redEnveButtons",
                    on: {
                        click: t.changShow
                    }
                }), t._v(" "), e("div", {
                    staticClass: "activityInfo"
                },
                [e("div", {
                    staticClass: "activityTop wow zoomIn",
                    staticStyle: {
                        visibility: "visible",
                        "animation-name": "zoomIn"
                    }
                }), t._v(" "), t.userredpacket.rules.length > 0 ? e("table", {
                    staticStyle: {
                        "font-size": "8px !important"
                    },
                    attrs: {
                        id: "activityTable"
                    }
                },
                [e("tbody", [t._m(7), t._v(" "), t._l(t.userredpacket.rules,
                function(a, i) {
                    return e("tr", {
                        key: i
                    },
                    [e("td", [t._v(t._s(a.start_time) + " ~ " + t._s(a.end_time))]), t._v(" "), e("td", [t._v(t._s(a.day_flow) + "-" + t._s(a.flow_money))]), t._v(" "), e("td", [t._v(t._s(Math.floor(a.recharge)))])])
                })], 2)]) : t._e(), t._v(" "), t._m(8)]), t._v(" "), e("div", {
                    staticClass: "h400"
                }), t._v(" "), t._m(9)])]), t._v(" "), t._m(10), t._v(" "), t._m(11)]), t._v(" "), t._e(), t._v(" "), t.weikaishi ? e("div", {
                    staticClass: "weikaishi divIndex"
                },
                [e("p", {
                    staticStyle: {
                        "margin-top": "66px",
                        "font-size": "16px"
                    }
                },
                [t._v("活动还没开始，请静待活动开始。")]), t._v(" "), e("a", {
                    staticClass: "close",
                    attrs: {
                        href: "javascript:;"
                    },
                    on: {
                        click: t.closeAll
                    }
                })]) : t._e(), t._v(" "), t.end ? e("div", {
                    staticClass: "qiangwan divIndex"
                },
                [e("p", {
                    staticStyle: {
                        "margin-top": "66px",
                        "font-size": "18px"
                    }
                },
                [t._v("请静待下次活动。")]), t._v(" "), e("a", {
                    staticClass: "close",
                    attrs: {
                        href: "javascript:;"
                    },
                    on: {
                        click: t.closeAll
                    }
                })]) : t._e(), t._v(" "), t.zhongjiang ? e("div", {
                    staticClass: "zhongjiang divIndex"
                },
                [e("p", [t._v("恭喜您")]), t._v(" "), e("p", [t._v("\n        抢到"), e("span", {
                    staticClass: "yellow bigFont",
                    attrs: {
                        id: "redPacketAmount"
                    }
                },
                [t._v(t._s(t.mey))]), t._v("元\n      ")]), t._v(" "), e("a", {
                    staticClass: "close",
                    attrs: {
                        href: "javascript:;"
                    },
                    on: {
                        click: t.closeAll
                    }
                })]) : t._e(), t._v(" "), t.henbaoqian ? e("div", {
                    staticClass: "henbaoqian divIndex"
                },
                [e("p", {
                    attrs: {
                        id: "henbaoqian"
                    }
                },
                [t._v(t._s(t.message))]), t._v(" "), e("div", {
                    staticClass: "rules",
                    attrs: {
                        id: "viewRules"
                    },
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/wallet?type=0")
                        }
                    }
                },
                [t._v("立即充值")]), t._v(" "), e("a", {
                    staticClass: "close",
                    attrs: {
                        href: "javascript:;"
                    },
                    on: {
                        click: t.closeAll
                    }
                })]) : t._e()])
            },
            staticRenderFns: [function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "redEnveBodyTop"
                },
                [a("div", {
                    staticClass: "pen",
                    staticStyle: {
                        "z-index": "200"
                    }
                },
                [a("img", {
                    attrs: {
                        src: "/static/image/pen.png"
                    }
                })])])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "redEnveFont"
                },
                [a("img", {
                    attrs: {
                        alt: "",
                        src: "/static/image/qianghb.png"
                    }
                })])
            },
            function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticStyle: {
                        display: "none"
                    },
                    attrs: {
                        id: "ready"
                    }
                },
                [e("div", {
                    staticClass: "wow zoomInLeft animated",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.35s",
                        "animation-delay": "0.35s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.35s",
                        "data-wow-delay": "0.35s"
                    }
                },
                [t._v("\n                    始")]), t._v(" "), e("div", {
                    staticClass: "wow zoomInLeft animated",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.3s",
                        "animation-delay": "0.3s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.30s",
                        "data-wow-delay": "0.30s"
                    }
                },
                [t._v("\n                    开")]), t._v(" "), e("div", {
                    staticClass: "wow zoomInLeft animated",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.25s",
                        "animation-delay": "0.25s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.25s",
                        "data-wow-delay": "0.25s"
                    }
                },
                [t._v("\n                    包")]), t._v(" "), e("div", {
                    staticClass: "wow zoomInLeft animated",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.2s",
                        "animation-delay": "0.2s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.20s",
                        "data-wow-delay": "0.20s"
                    }
                },
                [t._v("\n                    红")]), t._v(" "), e("div", {
                    staticClass: "wow zoomInLeft animated",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.15s",
                        "animation-delay": "0.15s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.15s",
                        "data-wow-delay": "0.15s"
                    }
                },
                [t._v("\n                    离")]), t._v(" "), e("div", {
                    staticClass: "wow zoomInLeft animated",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.1s",
                        "animation-delay": "0.1s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.10s",
                        "data-wow-delay": "0.10s"
                    }
                },
                [t._v("\n                    距")])])
            },
            function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticStyle: {
                        display: "none"
                    },
                    attrs: {
                        id: "starting"
                    }
                },
                [e("div", {
                    staticClass: "wow zoomInLeft animated",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.35s",
                        "animation-delay": "0.35s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.35s",
                        "data-wow-delay": "0.35s"
                    }
                },
                [t._v("\n                    束")]), t._v(" "), e("div", {
                    staticClass: "wow zoomInLeft animated",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.3s",
                        "animation-delay": "0.3s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.30s",
                        "data-wow-delay": "0.30s"
                    }
                },
                [t._v("\n                    结")]), t._v(" "), e("div", {
                    staticClass: "wow zoomInLeft animated",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.25s",
                        "animation-delay": "0.25s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.25s",
                        "data-wow-delay": "0.25s"
                    }
                },
                [t._v("\n                    包")]), t._v(" "), e("div", {
                    staticClass: "wow zoomInLeft animated",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.2s",
                        "animation-delay": "0.2s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.20s",
                        "data-wow-delay": "0.20s"
                    }
                },
                [t._v("\n                    红")]), t._v(" "), e("div", {
                    staticClass: "wow zoomInLeft animated",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.15s",
                        "animation-delay": "0.15s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.15s",
                        "data-wow-delay": "0.15s"
                    }
                },
                [t._v("\n                    离")]), t._v(" "), e("div", {
                    staticClass: "wow zoomInLeft animated",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.1s",
                        "animation-delay": "0.1s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.10s",
                        "data-wow-delay": "0.10s"
                    }
                },
                [t._v("\n                    距")])])
            },
            function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticStyle: {
                        display: "none"
                    },
                    attrs: {
                        id: "red-packet-finish"
                    }
                },
                [e("div", {
                    staticClass: "wow zoomInLeft animated",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.3s",
                        "animation-delay": "0.3s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.30s",
                        "data-wow-delay": "0.30s"
                    }
                },
                [t._v("\n                    完")]), t._v(" "), e("div", {
                    staticClass: "wow zoomInLeft animated",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.25s",
                        "animation-delay": "0.25s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.25s",
                        "data-wow-delay": "0.25s"
                    }
                },
                [t._v("\n                    抢")]), t._v(" "), e("div", {
                    staticClass: "wow zoomInLeft animated",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.2s",
                        "animation-delay": "0.2s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.20s",
                        "data-wow-delay": "0.20s"
                    }
                },
                [t._v("\n                    已")]), t._v(" "), e("div", {
                    staticClass: "wow zoomInLeft animated",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.15s",
                        "animation-delay": "0.15s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.15s",
                        "data-wow-delay": "0.15s"
                    }
                },
                [t._v("\n                    包")]), t._v(" "), e("div", {
                    staticClass: "wow zoomInLeft animated",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.1s",
                        "animation-delay": "0.1s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.10s",
                        "data-wow-delay": "0.10s"
                    }
                },
                [t._v("\n                    红")])])
            },
            function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticStyle: {
                        display: "block"
                    },
                    attrs: {
                        id: "finish"
                    }
                },
                [e("div", {
                    staticClass: "wow zoomInLeft",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.3s",
                        "animation-delay": "0.3s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.30s",
                        "data-wow-delay": "0.30s"
                    }
                },
                [t._v("\n                    束")]), t._v(" "), e("div", {
                    staticClass: "wow zoomInLeft",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.25s",
                        "animation-delay": "0.25s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.25s",
                        "data-wow-delay": "0.25s"
                    }
                },
                [t._v("\n                    结")]), t._v(" "), e("div", {
                    staticClass: "wow zoomInLeft",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.2s",
                        "animation-delay": "0.2s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.20s",
                        "data-wow-delay": "0.20s"
                    }
                },
                [t._v("\n                    已")]), t._v(" "), e("div", {
                    staticClass: "wow zoomInLeft",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.15s",
                        "animation-delay": "0.15s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.15s",
                        "data-wow-delay": "0.15s"
                    }
                },
                [t._v("\n                    包")]), t._v(" "), e("div", {
                    staticClass: "wow zoomInLeft",
                    staticStyle: {
                        visibility: "visible",
                        "animation-duration": "0.1s",
                        "animation-delay": "0.1s",
                        "animation-name": "zoomInLeft"
                    },
                    attrs: {
                        "data-wow-duration": "0.10s",
                        "data-wow-delay": "0.10s"
                    }
                },
                [t._v("\n                    红")])])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "time2"
                },
                [a("span", [this._v("天")]), this._v(" "), a("span", [this._v("时")]), this._v(" "), a("span", [this._v("分")]), this._v(" "), a("span", [this._v("秒")])])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("tr", [a("td", {
                    staticStyle: {
                        "border-radius": "17px 0px 0px"
                    }
                },
                [this._v("活动时间")]), this._v(" "), a("td", {
                    staticStyle: {
                        "min-width": "100px"
                    }
                },
                [this._v("累计充值金额")]), this._v(" "), a("td", {
                    staticStyle: {
                        "border-radius": "0px 17px 0px 0px",
                        "min-width": "60px"
                    }
                },
                [this._v("红包次数")])])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "activityBot wow flipInX",
                    staticStyle: {
                        visibility: "visible",
                        "animation-name": "flipInX",
                        "line-height": "1.5",
                        "font-size": "10px!important"
                    }
                },
                [a("h3", {
                    staticClass: "yellow",
                    staticStyle: {
                        "font-size": "12px!important"
                    }
                },
                [this._v("领取规则：")]), this._v(" "), a("p", [this._v("1.抢到红包后，系统自动派彩，"), a("span", {
                    staticClass: "yellow"
                },
                [this._v("秒到账")]), this._v("，达到流水倍数即可取款；")]), this._v(" "), a("p", [this._v("2.领取红包条件：充值金额需要在规定的活动日期（美东时间）范围内，根据充值累计金额，获取抢红包次数，即可抢对应次数的红包；")])])
            },
            function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticClass: "activityDes"
                },
                [e("div", {
                    staticClass: "activityDesTop wow zoomIn",
                    staticStyle: {
                        visibility: "visible",
                        "animation-name": "zoomIn"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "activityDesMain"
                },
                [e("p", {
                    staticStyle: {
                        "text-align": "center"
                    }
                },
                [e("strong", [t._v("金沙集团官网")])]), t._v(" "), e("p", [e("strong", [t._v("注意："), e("strong", {
                    staticStyle: {
                        "white-space": "normal"
                    }
                },
                [t._v("抢红包")]), t._v("北京时间为每天早上\n                  10点到12点，存款计算为前一天12点到今天10点，谢谢~")]), e("br"), t._v("每日百万现金红包！存款越多，机会越多，红包享不停，惊喜抢不停，还等什么？快快叫上好友一起分享吧！！"), e("br")]), t._v(" "), e("p", [t._v("1、会员必须在指定的活动日期（美东时间）范围内，根据充值累计金额，即可获得对应抢红包次数。若在规定的时间范围内没有达到存款金额范围，则不计算抢红包次数，逾期作废！")]), t._v(" "), e("p", [t._v("2、所有的活动优惠特为玩家而设，如发现任何团体或个人，以不诚实的方式套取红利或任何威胁、滥用公司优惠等行为，公司保留冻结、取消该团体或个人账户及账户结余的权利。")]), t._v(" "), e("p", [t._v("3、金沙集团官网保留所有解释权，在任何时候都可以更改、停止、取消优惠活动。")]), t._v(" "), e("p", [e("br")])])])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "botLeft wow bounceInLeft",
                    staticStyle: {
                        visibility: "visible",
                        "animation-name": "bounceInLeft"
                    }
                },
                [a("img", {
                    attrs: {
                        src: "/static/image/botLeft.png"
                    }
                })])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "botright"
                },
                [a("img", {
                    staticClass: "wow bounceInRight",
                    staticStyle: {
                        visibility: "visible",
                        "animation-name": "bounceInRight"
                    },
                    attrs: {
                        src: "/static/image/botRight.png"
                    }
                })])
            }]
        };
        var A = e("VU/8")(I, L, !1,
        function(t) {
            e("kShl")
        },
        "data-v-6f64e04b", null).exports,
        T = {
            name: "activity",
            data: function() {
                return {
                    activitytypeList: [],
                    actType: "",
                    activitylistList: []
                }
            },
            created: function() {
                this.activitytype(),
                this.activitylist()
            },
            methods: {
                activitytype: function() {
                    var t = this;
                    t.$apiFun.post("/api/activitytype", {}).then(function(a) {
                        console.log(a),
                        200 !== a.code && t.$parent.showTost(0, a.message),
                        200 === a.code && (t.activitytypeList = a.data)
                    })
                },
                activitylist: function() {
                    var t = this,
                    a = "" == t.actType ? {}: {
                        type: t.actType
                    };
                    t.$parent.showLoading(),
                    t.$apiFun.post("/api/activitylist", a).then(function(a) {
                        console.log(a),
                        200 !== a.code && t.$parent.showTost(0, a.message),
                        200 === a.code && (t.activitylistList = a.data.data),
                        t.$parent.hideLoading()
                    })
                },
                changActType: function(t) {
                    t != this.actType && (this.actType = t, this.activitylist())
                }
            },
            mounted: function() {},
            updated: function() {},
            beforeDestroy: function() {}
        },
        E = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return t.activitytypeList.length > 0 ? e("div", {
                    staticClass: "acts",
                    staticStyle: {
                        background: "#f1f1f1"
                    }
                },
                [e("div", {
                    staticClass: "pageTop"
                },
                [t._v("优惠活动")]), t._v(" "), e("van-tabs", {
                    staticClass: "topsa",
                    on: {
                        click: t.activitylist
                    },
                    model: {
                        value: t.actType,
                        callback: function(a) {
                            t.actType = a
                        },
                        expression: "actType"
                    }
                },
                [e("van-tab", {
                    attrs: {
                        title: "全部",
                        name: ""
                    }
                }), t._v(" "), t._l(t.activitytypeList,
                function(t, a) {
                    return e("van-tab", {
                        key: a,
                        attrs: {
                            name: t.id,
                            title: t.name
                        }
                    })
                })], 2), t._v(" "), e("div", {
                    staticClass: "consg"
                },
                [t._l(t.activitylistList,
                function(a, i) {
                    return e("div", {
                        key: i,
                        staticClass: "lis",
                        on: {
                            click: function(e) {
                                return t.$parent.goNav("/activityInfo?id=" + a.id)
                            }
                        }
                    },
                    [e("img", {
                        attrs: {
                            src: a.banner,
                            alt: ""
                        }
                    }), t._v(" "), e("div", {
                        staticClass: "tite_sf"
                    },
                    [t._v(t._s(a.title))])])
                }), t._v(" "), e("van-divider", {
                    style: {
                        color: "#ccc",
                        borderColor: "#ccc",
                        padding: "20px 16px"
                    },
                    attrs: {
                        dashed: ""
                    }
                },
                [t._v("END")])], 2)], 1) : t._e()
            },
            staticRenderFns: []
        };
        var U = e("VU/8")(T, E, !1,
        function(t) {
            e("mx8y")
        },
        "data-v-298e18cb", null).exports,
        D = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticClass: "acts",
                    staticStyle: {
                        "background-color": "#ede9e7",
                        "min-height": "100vh"
                    }
                },
                [e("div", {
                    staticClass: "pageTop"
                },
                [t._v("赞助")]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "30px"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "lis",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/zhanzhuye?type=1")
                        }
                    }
                },
                [t._m(0), t._v(" "), t._m(1)]), t._v(" "), e("div", {
                    staticClass: "lis",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/zhanzhuye?type=2")
                        }
                    }
                },
                [t._m(2), t._v(" "), t._m(3)]), t._v(" "), e("van-divider", {
                    style: {
                        color: "#ccc",
                        borderColor: "#ccc",
                        padding: "20px 100px"
                    },
                    attrs: {
                        dashed: ""
                    }
                },
                [t._v("没有更多了~")])], 1)
            },
            staticRenderFns: [function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "lfs"
                },
                [a("img", {
                    attrs: {
                        src: "/static/image/ddf471901f2b4fff9ee57015a1698227.png"
                    }
                }), this._v(" "), a("div", {
                    staticClass: "you"
                },
                [this._v("尤文图斯")]), this._v(" "), a("div", {
                    staticClass: "te"
                },
                [this._v("官方区域合作伙伴")])])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "rig"
                },
                [a("img", {
                    attrs: {
                        src: "/static/image/93b000fa1d3246ce9b90a62c018714af.png",
                        alt: ""
                    }
                })])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "lfs"
                },
                [a("img", {
                    attrs: {
                        src: "/static/image/ddf471901f2b4fff9ee57015a1698227.png"
                    }
                }), this._v(" "), a("div", {
                    staticClass: "you"
                },
                [this._v("阿斯顿维拉")]), this._v(" "), a("div", {
                    staticClass: "te"
                },
                [this._v("官方全球顶级合作伙伴")])])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "rig"
                },
                [a("img", {
                    attrs: {
                        src: "/static/image/bd72c14c428d41ce8105a0d82a1bb696.png",
                        alt: ""
                    }
                })])
            }]
        };
        var N = e("VU/8")({
            name: "zhanzhu",
            data: function() {
                return {}
            },
            created: function() {},
            methods: {},
            mounted: function() {},
            updated: function() {},
            beforeDestroy: function() {}
        },
        D, !1,
        function(t) {
            e("F3R3")
        },
        "data-v-3309a73e", null).exports,
        z = e("c/Tr"),
        P = e.n(z),
        B = {
            name: "mine",
            data: function() {
                return {
                    activitylistList: [],
                    bfNum: 0,
                    vipLis: []
                }
            },
            created: function() {
                this.activitylist(),
                this.uservip()
            },
            methods: {
                onchangemd: function(t) {
                    var a = this;
                    console.log(t.target.files);
                    var e = new FormData;
                    P()(t.target.files).map(function(t) {
                        console.log(t),
                        e.append("file", t)
                    }),
                    a.$parent.showLoading(),
                    a.$apiFun.post("/api/uploadimg", e).then(function(t) {
                        a.$parent.hideLoading(),
                        a.$parent.getUserInfoShowLoding()
                    })
                },
                uservip: function() {
                    var t = this;
                    t.$parent.showLoading(),
                    t.$apiFun.post("/api/uservip", {}).then(function(a) {
                        200 != a.code && t.$parent.showTost(0, a.message),
                        200 == a.code && (t.vipLis = a.data, t.getbfNum()),
                        t.$parent.hideLoading()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    })
                },
                getbfNum: function() {
                    var t = 0,
                    a = 1 * this.$store.state.userInfo.vip;
                    this.vipLis.forEach(function(e, i) {
                        console.log(),
                        i == a && (t = 1 * e.recharge)
                    });
                    var e = 1 * this.$store.state.userInfo.paysum,
                    i = 0 == e || 0 == t ? 0 : Math.round(e / t * 100);
                    this.bfNum = i > 100 ? 100 : i,
                    console.log(111)
                },
                transall: function() {
                    var t = this;
                    t.$parent.showLoading(),
                    t.$apiFun.post("/api/transall", {}).then(function(a) {
                        t.$parent.showTost(0, a.message),
                        t.$parent.getUserInfoShowLoding(),
                        t.$parent.hideLoading()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    })
                },
                activitylist: function() {
                    var t = this,
                    a = "" == t.actType ? {}: {
                        type: t.actType
                    };
                    t.$parent.showLoading(),
                    t.$apiFun.post("/api/activitylist", a).then(function(a) {
                        console.log(a),
                        200 !== a.code && t.$parent.showTost(0, a.message),
                        200 === a.code && (t.activitylistList = a.data.data),
                        t.$parent.hideLoading()
                    })
                }
            },
            mounted: function() {},
            updated: function() {},
            beforeDestroy: function() {}
        },
        R = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticStyle: {
                        "background-color": "#ede9e7",
                        "min-height": "100vh",
                        "box-sizing": "border-box"
                    }
                },
                [e("div", {
                    staticStyle: {
                        padding: "0 18px"
                    }
                },
                [e("div", {
                    staticClass: "mineTop"
                },
                [t._v("\n      我的\n      "), e("div", {
                    staticClass: "kefus",
                    on: {
                        click: function(a) {
                            return t.$parent.openKefu()
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/iconKefu.da12a10e52caa3da81e8cbe383247f67.png"
                    }
                }), e("span", [t._v("客服")])])]), t._v(" "), e("div", {
                    staticClass: "usersg"
                },
                [e("div", {
                    staticClass: "lesf"
                },
                [e("img", {
                    attrs: {
                        src: t.$store.state.userInfo.avatar ? t.$store.state.userInfo.avatar: "/static/image/imageAvatar02@3x.png",
                        alt: ""
                    }
                }), t._v(" "), e("input", {
                    staticClass: "inputsw",
                    attrs: {
                        type: "file",
                        single: "",
                        accept: "image/gif,image/png"
                    },
                    on: {
                        change: t.onchangemd
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "center",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/userInfo")
                        }
                    }
                },
                [e("div", {
                    staticClass: "name"
                },
                [t._v("\n          " + t._s(t.$store.state.userInfo.username) + "\n          "), e("img", {
                    attrs: {
                        src: "/static/style/vip" + t.$store.state.userInfo.vip + ".png",
                        alt: ""
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "dat"
                },
                [t._v("加入" + t._s(t.$store.state.appInfo.title) + "第" + t._s(t.$store.state.userInfo.joinday) + "天")])]), t._v(" "), e("img", {
                    staticClass: "rig",
                    attrs: {
                        src: "/static/style/icoArrowGrey@2x.abc43ab099390c4587d33290a76fc15e.png",
                        alt: ""
                    },
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/userInfo")
                        }
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "meys"
                },
                [e("div", {
                    staticClass: "lefs"
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/wallet.png",
                        alt: ""
                    }
                }), t._v(" "), e("span", [t._v("中心钱包")]), t._v(" "), e("div", {
                    staticClass: "imsg",
                    on: {
                        click: function(a) {
                            return t.$parent.getUserInfoShowLoding()
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/style/refresh_2.98852cef4dfc05494e3f32a99e17d124.png"
                    }
                })])]), t._v(" "), e("div", {
                    staticClass: "meysf"
                },
                [e("span", [t._v("￥")]), t._v("\n        " + t._s(t.$store.state.userInfo.balance) + "\n      ")])]), t._v(" "), e("div", {
                    staticClass: "vipousf"
                },
                [e("div", {
                    staticClass: "box",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/vip")
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/vipnew.png",
                        alt: ""
                    }
                }), t._v(" "), t._m(0)]), t._v(" "), e("div", {
                    staticClass: "shu"
                }), t._v(" "), e("div", {
                    staticClass: "box",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/activity")
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/giftnew.png",
                        alt: ""
                    }
                }), t._v(" "), t._m(1)])])]), t._v(" "), e("div", {
                    staticClass: "uslis"
                },
                [e("div", {
                    staticStyle: {
                        "box-sizing": "border-box",
                        padding: "0 12px"
                    }
                },
                [e("div", {
                    staticStyle: {
                        height: "24px"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "thbs"
                },
                [e("div", {
                    staticClass: "lis",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/money")
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/walletnew.png",
                        alt: ""
                    }
                }), t._v(" "), e("span", [t._v("我的钱包")])]), t._v(" "), e("div", {
                    staticClass: "lis",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/transRecord")
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/transactionnew.png",
                        alt: ""
                    }
                }), t._v(" "), e("span", [t._v("交易记录")])]), t._v(" "), e("div", {
                    staticClass: "lis",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/betRecord")
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/betnew.png",
                        alt: ""
                    }
                }), t._v(" "), e("span", [t._v("投注记录")])]), t._v(" "), e("div", {
                    staticClass: "lis",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/userCent")
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/settingnew.png",
                        alt: ""
                    }
                }), t._v(" "), e("span", [t._v("账户设置")])])]), t._v(" "), e("div", {
                    staticClass: "bosfs"
                },
                [e("div", {
                    staticClass: "hgsw",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/message")
                        }
                    }
                },
                [e("img", {
                    staticClass: "firsimg",
                    attrs: {
                        src: "/static/image/ob@2x.png",
                        alt: ""
                    }
                }), t._v(" "), e("span", {
                    staticClass: "tit"
                },
                [t._v("消息中心")]), t._v(" "), e("span", {
                    staticClass: "tisf"
                }), t._v(" "), e("img", {
                    staticClass: "rigiong",
                    attrs: {
                        src: "/static/style/icoArrowGrey@2x.abc43ab099390c4587d33290a76fc15e.png",
                        alt: ""
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "hgsw",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/fanshui")
                        }
                    }
                },
                [e("img", {
                    staticClass: "firsimg",
                    attrs: {
                        src: "/static/image/haoyou.svg",
                        alt: ""
                    }
                }), t._v(" "), e("span", {
                    staticClass: "tit"
                },
                [t._v("返水中心")]), t._v(" "), e("span", {
                    staticClass: "tisf"
                }), t._v(" "), e("img", {
                    staticClass: "rigiong",
                    attrs: {
                        src: "/static/style/icoArrowGrey@2x.abc43ab099390c4587d33290a76fc15e.png",
                        alt: ""
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "hgsw",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/activityRecord")
                        }
                    }
                },
                [e("img", {
                    staticClass: "firsimg",
                    attrs: {
                        src: "/static/image/help.png",
                        alt: ""
                    }
                }), t._v(" "), e("span", {
                    staticClass: "tit"
                },
                [t._v("活动记录")]), t._v(" "), e("span", {
                    staticClass: "tisf"
                }), t._v(" "), e("img", {
                    staticClass: "rigiong",
                    attrs: {
                        src: "/static/style/icoArrowGrey@2x.abc43ab099390c4587d33290a76fc15e.png",
                        alt: ""
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "hgsw",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/welfare")
                        }
                    }
                },
                [e("img", {
                    staticClass: "firsimg",
                    attrs: {
                        src: "/static/image/haoyou.svg",
                        alt: ""
                    }
                }), t._v(" "), e("span", {
                    staticClass: "tit"
                },
                [t._v("福利中心")]), t._v(" "), e("span", {
                    staticClass: "tisf"
                }), t._v(" "), e("img", {
                    staticClass: "rigiong",
                    attrs: {
                        src: "/static/style/icoArrowGrey@2x.abc43ab099390c4587d33290a76fc15e.png",
                        alt: ""
                    }
                })]), t._v(" "), 0 == t.$store.state.userInfo.isagent ? e("div", {
                    staticClass: "hgsw",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/applyagent")
                        }
                    }
                },
                [e("img", {
                    staticClass: "firsimg",
                    attrs: {
                        src: "/static/image/join.png",
                        alt: ""
                    }
                }), t._v(" "), e("span", {
                    staticClass: "tit"
                },
                [t._v("合营计划")]), t._v(" "), e("span", {
                    staticClass: "tisf"
                },
                [t._v("加入我们，共赢财富")]), t._v(" "), e("img", {
                    staticClass: "rigiong",
                    attrs: {
                        src: "/static/style/icoArrowGrey@2x.abc43ab099390c4587d33290a76fc15e.png",
                        alt: ""
                    }
                })]) : t._e(), t._v(" "), 1 == t.$store.state.userInfo.isagent ? e("div", {
                    staticClass: "hgsw",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/gamePage?dailiD=1")
                        }
                    }
                },
                [e("img", {
                    staticClass: "firsimg",
                    attrs: {
                        src: "/static/image/join.png",
                        alt: ""
                    }
                }), t._v(" "), e("span", {
                    staticClass: "tit"
                },
                [t._v("代理登录")]), t._v(" "), e("span", {
                    staticClass: "tisf"
                }), t._v(" "), e("img", {
                    staticClass: "rigiong",
                    attrs: {
                        src: "/static/style/icoArrowGrey@2x.abc43ab099390c4587d33290a76fc15e.png",
                        alt: ""
                    }
                })]) : t._e(), t._v(" "), e("div", {
                    staticClass: "hgsw",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/app")
                        }
                    }
                },
                [e("img", {
                    staticClass: "firsimg",
                    attrs: {
                        src: "/static/image/appxiazaus.png",
                        alt: ""
                    }
                }), t._v(" "), e("span", {
                    staticClass: "tit"
                },
                [t._v("app下载")]), t._v(" "), e("span", {
                    staticClass: "tisf"
                }), t._v(" "), e("img", {
                    staticClass: "rigiong",
                    attrs: {
                        src: "/static/style/icoArrowGrey@2x.abc43ab099390c4587d33290a76fc15e.png",
                        alt: ""
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "hgsw",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/boutBallBet")
                        }
                    }
                },
                [e("img", {
                    staticClass: "firsimg",
                    attrs: {
                        src: "/static/image/help.png",
                        alt: ""
                    }
                }), t._v(" "), e("span", {
                    staticClass: "tit"
                },
                [t._v("帮助中心")]), t._v(" "), e("span", {
                    staticClass: "tisf"
                },
                [t._v("V1.1.1.20220906_m")]), t._v(" "), e("img", {
                    staticClass: "rigiong",
                    attrs: {
                        src: "/static/style/icoArrowGrey@2x.abc43ab099390c4587d33290a76fc15e.png",
                        alt: ""
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "hgsw",
                    staticStyle: {
                        border: "none"
                    },
                    on: {
                        click: t.$parent.outLogin
                    }
                },
                [e("img", {
                    staticClass: "firsimg",
                    staticStyle: {
                        width: "18px",
                        "margin-left": "3px",
                        "margin-right": "3px"
                    },
                    attrs: {
                        src: "/static/image/close151.png",
                        alt: ""
                    }
                }), t._v(" "), e("span", {
                    staticClass: "tit"
                },
                [t._v("退出系统")]), t._v(" "), e("span", {
                    staticClass: "tisf"
                }), t._v(" "), e("img", {
                    staticClass: "rigiong",
                    attrs: {
                        src: "/static/style/icoArrowGrey@2x.abc43ab099390c4587d33290a76fc15e.png",
                        alt: ""
                    }
                })])])])])])
            },
            staticRenderFns: [function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", [a("div", {
                    staticClass: "nsgs"
                },
                [this._v("VIP特权")]), this._v(" "), a("div", {
                    staticClass: "nsgsss"
                },
                [this._v("VIP PRIVILEGE")])])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", [a("div", {
                    staticClass: "nsgs"
                },
                [this._v("豪礼赠送")]), this._v(" "), a("div", {
                    staticClass: "nsgsss"
                },
                [this._v("SPREE ACTIVITY")])])
            }]
        };
        var F = e("VU/8")(B, R, !1,
        function(t) {
            e("kCIW")
        },
        "data-v-f33565de", null).exports,
        O = {
            name: "login",
            data: function() {
                return {
                    registerInfo: {},
                    loginInfo: {},
                    imgLis: ["2PYL", "6AQ5", "8PHD", "21I7", "69HM", "ACWA", "DUZ7", "IY98", "K647", "M52T", "NY52", "NZFA", "SN76", "SP4D", "VAEO", "YFQM", "ZZU5", "7GQT", "LFW3", "NU2T", "UAE3"],
                    index: 0,
                    infoType: 0,
                    psw1: !0,
                    psw2: !0,
                    psw3: !0,
                    pid: ""
                }
            },
            created: function() {
                var t = this.$route.query;
                t.type && (this.infoType = t.type),
                this.pid = localStorage.getItem("pid") || "",
                t.pid && (this.pid = t.pid),
                this.changIndex()
            },
            methods: {
                changPsw: function(t) {
                    this[t] = !this[t]
                },
                changInfoType: function(t) {
                    this.infoType != t && (this.infoType = t, this.changIndex(), this.loginInfo = {},
                    this.registerInfo = {},
                    this.psw1 = !0, this.psw2 = !0, this.psw3 = !0)
                },
                changIndex: function() {
                    this.index = parseInt(20 * Math.random())
                },
                register: function() {
                    var t = this,
                    a = t.registerInfo;
                    if (console.log(a), !a.name || a.name.length < 6) t.$parent.showTost(0, " 用户名长度6~16位，以字母或数字组合！");
                    else if (!a.password || a.password.length < 6) t.$parent.showTost(0, "请输入正确的密码长度，最少6位！");
                    else if (a.confirmPass && a.confirmPass == a.password) if (!a.realname || a.realname.length < 2) t.$parent.showTost(0, "请输入您的真实姓名!");
                    else if (!a.paypassword || a.paypassword.length < 6) t.$parent.showTost(0, "请输入正确的支付密码长度，最少6位！");
                    else {
                        var e = t.registerInfo.code;
                        if (e) {
                            if (e.toUpperCase() != t.imgLis[t.index]) return t.$parent.showTost(0, "验证码错误！"),
                            t.registerInfo.code = null,
                            void t.changIndex();
                            t.$parent.showLoading(),
                            t.pid && (a.pid = t.pid),
                            console.log(a),
                            t.$apiFun.register(a).then(function(a) {
                                t.$parent.showTost(1, a.message),
                                200 == a.code && (sessionStorage.setItem("token", a.data.api_token), t.$store.commit("changToken"), t.$parent.getUserInfo(), t.$parent.openDaoTime(), t.$parent.goNav("/")),
                                t.$parent.hideLoading()
                            }).
                            catch(function(a) {
                                t.$parent.showTost(0, "网络异常，请检查网络后重试!"),
                                t.$parent.hideLoading()
                            })
                        } else t.$parent.showTost(0, "请输入验证码！")
                    } else t.$parent.showTost(0, "两次密码不一致！")
                },
                login: function() {
                    var t = this,
                    a = t.loginInfo;
                    if (a.name && a.password) {
                        var e = t.loginInfo.code;
                        if (e) {
                            if (e.toUpperCase() != t.imgLis[t.index]) return t.$parent.showTost(0, "验证码错误！"),
                            t.loginInfo.code = null,
                            void t.changIndex();
                            t.$parent.showLoading(),
                            t.$apiFun.login(a).then(function(a) {
                                200 !== a.code && (t.$parent.showTost(0, a.message), t.$parent.hideLoading()),
                                200 === a.code && (sessionStorage.setItem("token", a.data.api_token), t.$store.commit("changToken"), t.$parent.getUserInfo(), t.$parent.openDaoTime(), t.$parent.goNav("/")),
                                t.$parent.hideLoading()
                            }).
                            catch(function(a) {
                                t.$parent.showTost(0, "网络异常，请检查网络后重试!"),
                                t.$parent.hideLoading()
                            })
                        } else t.$parent.showTost(0, "请输入验证码！")
                    } else t.$parent.showTost(0, "请输入您的账号和密码！")
                }
            },
            mounted: function() {},
            updated: function() {},
            beforeDestroy: function() {}
        },
        q = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticStyle: {
                        "overflow-y": "auto"
                    },
                    attrs: {
                        id: "__next"
                    }
                },
                [e("div", {
                    staticClass: "entry_entryStyle__FXwIQ"
                },
                [0 == t.infoType ? e("div", {
                    staticClass: "entry_entryMain__2anz2 entry_loginAnimated__1Gwda"
                },
                [e("div", {
                    staticStyle: {
                        width: "100vw"
                    }
                },
                [e("div", {
                    staticClass: "login_formContainer__2zhUW"
                },
                [e("div", {
                    staticClass: "login_normalContent__1I3Xg"
                },
                [e("div", {
                    staticClass: "login_title__1VIs3"
                },
                [t._v("登录")]), t._v(" "), e("div", {
                    staticClass: "login_form__1BQh1"
                },
                [e("div", {
                    staticClass: "login_normalLoginWrap__Q4P0O"
                },
                [e("div", {
                    staticClass: "login_inputBox__3j84z"
                },
                [e("div", {
                    staticClass: "login_inputGroup__1xPH8"
                },
                [e("div", {
                    staticClass: "login_accountIcon__1eker"
                }), t._v(" "), e("div", {
                    staticClass: "login_inputMain__18b4V"
                },
                [e("input", {
                    directives: [{
                        name: "model",
                        rawName: "v-model",
                        value: t.loginInfo.name,
                        expression: "loginInfo.name"
                    }],
                    staticClass: "login_input__hMBpm",
                    attrs: {
                        maxlength: "32",
                        placeholder: "用户名",
                        type: "text",
                        autocomplete: "off"
                    },
                    domProps: {
                        value: t.loginInfo.name
                    },
                    on: {
                        input: function(a) {
                            a.target.composing || t.$set(t.loginInfo, "name", a.target.value)
                        }
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "login_operateBtn__25zoY login_deleteBtn__Tamqm",
                    staticStyle: {
                        opacity: "0"
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "login_inputGroup__1xPH8"
                },
                [e("div", {
                    staticClass: "login_passwordIcon__foPzR"
                }), t._v(" "), e("div", {
                    staticClass: "login_inputMain__18b4V"
                },
                [e("input", {
                    directives: [{
                        name: "model",
                        rawName: "v-model",
                        value: t.loginInfo.password,
                        expression: "loginInfo.password"
                    }],
                    staticClass: "login_input__hMBpm",
                    attrs: {
                        placeholder: "密码",
                        maxlength: "32",
                        type: "password",
                        autocomplete: "off"
                    },
                    domProps: {
                        value: t.loginInfo.password
                    },
                    on: {
                        input: function(a) {
                            a.target.composing || t.$set(t.loginInfo, "password", a.target.value)
                        }
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "login_operateBtn__25zoY login_hidePwdBtn__3EBnN",
                    staticStyle: {
                        opacity: "0"
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "login_inputGroup__1xPH8"
                },
                [e("div", {
                    staticClass: "login_passwordIcon__foPzR"
                }), t._v(" "), e("div", {
                    staticClass: "login_inputMain__18b4V",
                    staticStyle: {
                        "flex-flow": "row nowrap",
                        "align-items": "center"
                    }
                },
                [e("input", {
                    directives: [{
                        name: "model",
                        rawName: "v-model",
                        value: t.loginInfo.code,
                        expression: "loginInfo.code"
                    }],
                    staticClass: "login_input__hMBpm",
                    attrs: {
                        maxlength: "6",
                        placeholder: "验证码 ",
                        type: "text",
                        autocomplete: "off"
                    },
                    domProps: {
                        value: t.loginInfo.code
                    },
                    on: {
                        input: function(a) {
                            a.target.composing || t.$set(t.loginInfo, "code", a.target.value)
                        }
                    }
                }), t._v(" "), e("img", {
                    staticStyle: {
                        cursor: "pointer",
                        height: "30px"
                    },
                    attrs: {
                        src: "/static/image/yzm/" + t.imgLis[t.index] + ".png",
                        alt: ""
                    },
                    on: {
                        click: t.changIndex
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "login_operateBtn__25zoY login_deleteBtn__Tamqm",
                    staticStyle: {
                        opacity: "0"
                    }
                })])]), t._v(" "), e("div", {
                    staticClass: "login_btnGroup__37-ja"
                },
                [e("button", {
                    staticClass: "login_activeBtn__3wLDx",
                    staticStyle: {
                        background: "#cf866b"
                    },
                    attrs: {
                        type: "button",
                        "data-analytics": "button",
                        "data-label": "登录",
                        "data-key": "yb_lgn_btn_tap"
                    },
                    on: {
                        click: t.login
                    }
                },
                [t._v("登录")])]), t._v(" "), e("div", {
                    staticClass: "login_visitorBtn__2xo1h"
                },
                [e("a", {
                    attrs: {
                        "data-analytics": "button",
                        "data-label": "先去逛逛",
                        "data-key": "yb_tour"
                    },
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/")
                        }
                    }
                },
                [t._v("先去逛逛")]), e("a", {
                    on: {
                        click: t.$parent.openKefu
                    }
                },
                [t._v("在线客服")])])])])]), t._v(" "), e("div", {
                    staticClass: "login_locationToRight__gIQoN",
                    on: {
                        click: function(a) {
                            return t.changInfoType(1)
                        }
                    }
                },
                [t._m(0)])])])]) : t._e(), t._v(" "), 1 == t.infoType ? e("div", {
                    staticClass: "entry_entryMain__2anz2 entry_registerAnimated__2Bdsz entry_transition__38Yv4"
                },
                [e("div", {
                    staticStyle: {
                        width: "100vw",
                        "margin-left": "100vw"
                    }
                },
                [e("div", {
                    staticClass: "register_formContainer__3DhlE"
                },
                [e("div", {
                    staticClass: "register_locationToLeft__17bW-",
                    on: {
                        click: function(a) {
                            return t.changInfoType(0)
                        }
                    }
                },
                [t._m(1)]), t._v(" "), e("div", {
                    staticClass: "register_registerContent__16A8K"
                },
                [e("div", {
                    staticClass: "register_registerTitle__gkT0e"
                },
                [t._v("注册")]), t._v(" "), e("div", {
                    staticClass: "register_form__1pmZ3"
                },
                [e("div", {
                    staticClass: "register_inputBox__6n6TQ"
                },
                [e("div", {
                    staticClass: "register_inputGroup__2VkRD"
                },
                [e("div", {
                    staticClass: "register_inputIcon__2arpa register_accountIcon__27e07"
                }), t._v(" "), e("div", {
                    staticClass: "register_inputMain__3Ur5m"
                },
                [e("input", {
                    directives: [{
                        name: "model",
                        rawName: "v-model",
                        value: t.registerInfo.name,
                        expression: "registerInfo.name"
                    }],
                    staticClass: "register_input__1ukwi",
                    attrs: {
                        placeholder: "用户名",
                        maxlength: "32",
                        "data-inputtype": "register",
                        type: "text"
                    },
                    domProps: {
                        value: t.registerInfo.name
                    },
                    on: {
                        input: function(a) {
                            a.target.composing || t.$set(t.registerInfo, "name", a.target.value)
                        }
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "register_operateBtn__12YnF register_deleteBtn__2EnTW",
                    staticStyle: {
                        opacity: "0"
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "register_inputGroup__2VkRD"
                },
                [e("div", {
                    staticClass: "register_inputIcon__2arpa register_passwordIcon__18fIi"
                }), t._v(" "), e("div", {
                    staticClass: "register_inputMain__3Ur5m"
                },
                [e("input", {
                    directives: [{
                        name: "model",
                        rawName: "v-model",
                        value: t.registerInfo.password,
                        expression: "registerInfo.password"
                    }],
                    staticClass: "register_input__1ukwi",
                    attrs: {
                        placeholder: "登录密码",
                        maxlength: "32",
                        "data-inputtype": "register",
                        type: "password",
                        autocomplete: "off"
                    },
                    domProps: {
                        value: t.registerInfo.password
                    },
                    on: {
                        input: function(a) {
                            a.target.composing || t.$set(t.registerInfo, "password", a.target.value)
                        }
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "register_operateBtn__12YnF register_hidePwdBtn__Qkz7h",
                    staticStyle: {
                        opacity: "0"
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "register_inputGroup__2VkRD"
                },
                [e("div", {
                    staticClass: "register_inputIcon__2arpa register_passwordIcon__18fIi"
                }), t._v(" "), e("div", {
                    staticClass: "register_inputMain__3Ur5m"
                },
                [e("input", {
                    directives: [{
                        name: "model",
                        rawName: "v-model",
                        value: t.registerInfo.confirmPass,
                        expression: "registerInfo.confirmPass"
                    }],
                    staticClass: "register_input__1ukwi",
                    attrs: {
                        placeholder: "确认密码",
                        "data-inputtype": "register",
                        maxlength: "32",
                        type: "password",
                        autocomplete: "off"
                    },
                    domProps: {
                        value: t.registerInfo.confirmPass
                    },
                    on: {
                        input: function(a) {
                            a.target.composing || t.$set(t.registerInfo, "confirmPass", a.target.value)
                        }
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "register_operateBtn__12YnF register_hidePwdBtn__Qkz7h",
                    staticStyle: {
                        opacity: "0"
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "register_inputGroup__2VkRD"
                },
                [e("div", {
                    staticClass: "register_inputIcon__2arpa register_accountIcon__27e07"
                }), t._v(" "), e("div", {
                    staticClass: "register_inputMain__3Ur5m"
                },
                [e("input", {
                    directives: [{
                        name: "model",
                        rawName: "v-model",
                        value: t.registerInfo.realname,
                        expression: "registerInfo.realname"
                    }],
                    staticClass: "register_input__1ukwi",
                    attrs: {
                        placeholder: "真实姓名",
                        maxlength: "32",
                        "data-inputtype": "register",
                        type: "text"
                    },
                    domProps: {
                        value: t.registerInfo.realname
                    },
                    on: {
                        input: function(a) {
                            a.target.composing || t.$set(t.registerInfo, "realname", a.target.value)
                        }
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "register_operateBtn__12YnF register_deleteBtn__2EnTW",
                    staticStyle: {
                        opacity: "0"
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "register_inputGroup__2VkRD"
                },
                [e("div", {
                    staticClass: "register_inputIcon__2arpa register_passwordIcon__18fIi"
                }), t._v(" "), e("div", {
                    staticClass: "register_inputMain__3Ur5m"
                },
                [e("input", {
                    directives: [{
                        name: "model",
                        rawName: "v-model",
                        value: t.registerInfo.paypassword,
                        expression: "registerInfo.paypassword"
                    }],
                    staticClass: "register_input__1ukwi",
                    attrs: {
                        placeholder: "支付密码",
                        maxlength: "32",
                        "data-inputtype": "register",
                        type: "password",
                        autocomplete: "off"
                    },
                    domProps: {
                        value: t.registerInfo.paypassword
                    },
                    on: {
                        input: function(a) {
                            a.target.composing || t.$set(t.registerInfo, "paypassword", a.target.value)
                        }
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "register_operateBtn__12YnF register_hidePwdBtn__Qkz7h",
                    staticStyle: {
                        opacity: "0"
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "register_inputGroup__2VkRD"
                },
                [e("div", {
                    staticClass: "register_inputIcon__2arpa register_passwordIcon__18fIi"
                }), t._v(" "), e("div", {
                    staticClass: "register_inputMain__3Ur5m",
                    staticStyle: {
                        "flex-flow": "row nowrap",
                        "align-items": "center"
                    }
                },
                [e("input", {
                    directives: [{
                        name: "model",
                        rawName: "v-model",
                        value: t.registerInfo.code,
                        expression: "registerInfo.code"
                    }],
                    staticClass: "register_input__1ukwi",
                    attrs: {
                        "data-inputtype": "register",
                        maxlength: "4",
                        placeholder: "验证码",
                        type: "text",
                        autocomplete: "off"
                    },
                    domProps: {
                        value: t.registerInfo.code
                    },
                    on: {
                        input: function(a) {
                            a.target.composing || t.$set(t.registerInfo, "code", a.target.value)
                        }
                    }
                }), t._v(" "), e("img", {
                    staticStyle: {
                        cursor: "pointer",
                        height: "30px"
                    },
                    attrs: {
                        src: "/static/image/yzm/" + t.imgLis[t.index] + ".png",
                        alt: ""
                    },
                    on: {
                        click: t.changIndex
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "register_operateBtn__12YnF register_hidePwdBtn__Qkz7h",
                    staticStyle: {
                        opacity: "0"
                    }
                })])]), t._v(" "), e("div", {
                    staticClass: "register_ruleContainer__1h-YD"
                }), t._v(" "), e("div", {
                    staticClass: "register_btnGroup__1vkHI"
                },
                [e("button", {
                    staticClass: "register_registerBtn__1set3",
                    staticStyle: {
                        background: "#cf866b"
                    },
                    attrs: {
                        type: "button",
                        "data-key": "yb_rgstr_btn_tap",
                        "data-analytics": "button",
                        "data-label": "注册"
                    },
                    on: {
                        click: t.register
                    }
                },
                [t._v("注册")])])])])])])]) : t._e()]), t._v(" "), t._m(2)])
            },
            staticRenderFns: [function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "login_locationContent__o3pkw"
                },
                [a("div", {
                    staticClass: "login_linkRegisterIcon__3AVOn"
                }), this._v(" "), a("div", {
                    staticClass: "login_text__-W8Ok"
                },
                [a("span", [this._v("注")]), a("span", [this._v("册")]), a("span", [this._v("新")]), a("span", [this._v("用")]), a("span", [this._v("户")])])])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "register_locationContent__2IbiZ"
                },
                [a("div", {
                    staticClass: "register_linkRegisterIcon__bUBqC"
                }), this._v(" "), a("div", {
                    staticClass: "register_text__33mcY"
                },
                [a("span", [this._v("返")]), a("span", [this._v("回")]), a("span", [this._v("登")]), a("span", [this._v("录")])])])
            },
            function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticClass: "footer_footer_bg_hidden__1QCjG",
                    staticStyle: {
                        display: "none"
                    },
                    attrs: {
                        id: "app-footer"
                    }
                },
                [e("ul", [e("li", {
                    attrs: {
                        "data-analytics": "button",
                        "data-label": "首页"
                    }
                },
                [e("i"), t._v(" "), e("div", {
                    staticClass: "image_imageContainer__2dKjX image_cover__3B5D- footer_icon__1Rh5j",
                    staticStyle: {
                        cursor: "inherit"
                    }
                },
                [e("div", {
                    staticStyle: {
                        display: "block",
                        overflow: "hidden",
                        position: "absolute",
                        top: "0px",
                        left: "0px",
                        bottom: "0px",
                        right: "0px",
                        "box-sizing": "border-box",
                        margin: "0px"
                    }
                },
                [e("img", {
                    staticClass: "footer_icon__1Rh5j",
                    staticStyle: {
                        position: "absolute",
                        top: "0px",
                        left: "0px",
                        bottom: "0px",
                        right: "0px",
                        "box-sizing": "border-box",
                        padding: "0px",
                        border: "none",
                        margin: "auto",
                        display: "block",
                        width: "0px",
                        height: "0px",
                        "min-width": "100%",
                        "max-width": "100%",
                        "min-height": "100%",
                        "max-height": "100%",
                        "object-fit": "cover"
                    },
                    attrs: {
                        src: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAAsTAAALEwEAmpwYAAAEVklEQVRoge2ZT2zbVBzHAxoIEBxgAk0CIY4gxAWkSQghgcQFBDshIXFjlzEIF24goQmhHcoJoYnTOHBaWlg1mO2kSZv37KSxn5NtbVBI/ziJnffshGRts7GtZRR+yKUJiZtgu423TuQnfQ+R8/Q+3zy/9/vaCYVGNapRDbUKBbgXE/YxJuw8JqyKFbqCFYYwoV/OztcfC+3nQln6CiJsASkU+gkTuoZVdhwA7grttxIJO4YJ+3MQfK8R9h0COBDaL4VV9pkX8G4lZcrnctYDtxUcAO5GKj3lF356lgKHDeCxLk8TdvB2btZxJ5w6X4elyhpIKusPn64Ch/R/hfViIm09eUvhUaHxIFZYwgk3V2zA7zc3wa7FyuoO+IQTHrVlsFjaePaWwEsXa48iheWccPmFJvx2/Sasb/yxJWWu1nM9nhoEr2+vhLEqSMZLgcKjS7WnsMKWnPA/LzZhpbUOrasbsHZlA4gDfsoNHnVM3IiK1SOBwIu5+nOYUKsfvNW4Bo2V61BrXIPZC2bP9ZhXeNS5nTYFsXp0qPCYWC/bTcgJP7/QhAq9ArR2Fcq0BVK2d+NGJcMnvN6RgKufDgVezJpHsELXexqRQuFi4VdYKK+CZqxBUVuxu2wvvLh7eK5jwvh6T11bVMyjSGGbTvhsvg7zxSYUli7D3C+N3tNGHg48ty0eGRH7yPYNj1Xzg37nuH2Pq/n61gqo872bNSlTEPBwwLneXsEj5CN6YIW9OijXpHImyJesHZt1RqbAiwHAIx3OJ3WI8NpXPgzQ/H+Hsd7PMxlqx4JA4H9KVuAMvwwRTtv8YarytCt8SrFe8JVr5Kq9xIHBR7hlOLOtcU476f7rE/Mjz/CZ4ODPzVQ64B3xy9iDAXbSW6IMEH66vBOeW7b3waIHA3TMDT4xawQGPxkv9YXfVmnPBuI2fADgHHaF37uBeCo4+LNTrvB7MzAVFDzS4fuoJ/jdG4h5CWVYN+zswmPjEzdxWP+GQ3r9H3jNK/zuDMQk91+QR0Y6nW4+FPJRsQx9ZELQ8j7g/RlI+ojDMYkebo/PULgfZc3XkMLe7padajNzlx/vnms8WnojEANJuQqCj1yTy8E9ncdNQrWBEUSh61g132rPNcFXDg3fgEzHBJ9xuD1WJOYJtx5i56z29yen2cGhGxAkY8zvKdIeiwg97drFCW0FaoDHIwMwWgFudAvp+3ITn42X79xNPBkvAVaqd6aBc4ny1usaTKinPvD5fjLw43Sl+2VCwdUAlunrvA94Huu19lhRYV+4d2JW7BhGcCDCaTcGwdsP9Q7zp0NeKpmh33p5ZBRE46+ZDA13gBT2BCa0NtgA2xSJ9W73XON86UQ/eA454dkCUhuHQl5rJkMPR0XjmID0cD/xUvV9KWc97xyXyrceFlXzHftPv25h1XxPvGA902+uiejyixGhdDwiaOEJQQvHJD2MiLklUTE/RIS9iSpwn2f4UY3qf1R/A/1BRmX2Ea0WAAAAAElFTkSuQmCC",
                        decoding: "async"
                    }
                })])]), t._v(" "), e("span", {},
                [t._v("首页")])]), t._v(" "), e("li", {
                    attrs: {
                        "data-analytics": "button",
                        "data-label": "优惠"
                    }
                },
                [e("i"), t._v(" "), e("div", {
                    staticClass: "image_imageContainer__2dKjX image_cover__3B5D- footer_icon__1Rh5j",
                    staticStyle: {
                        cursor: "inherit"
                    }
                },
                [e("div", {
                    staticStyle: {
                        display: "block",
                        overflow: "hidden",
                        position: "absolute",
                        top: "0px",
                        left: "0px",
                        bottom: "0px",
                        right: "0px",
                        "box-sizing": "border-box",
                        margin: "0px"
                    }
                },
                [e("img", {
                    staticClass: "footer_icon__1Rh5j",
                    staticStyle: {
                        position: "absolute",
                        top: "0px",
                        left: "0px",
                        bottom: "0px",
                        right: "0px",
                        "box-sizing": "border-box",
                        padding: "0px",
                        border: "none",
                        margin: "auto",
                        display: "block",
                        width: "0px",
                        height: "0px",
                        "min-width": "100%",
                        "max-width": "100%",
                        "min-height": "100%",
                        "max-height": "100%",
                        "object-fit": "cover"
                    },
                    attrs: {
                        src: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAAsTAAALEwEAmpwYAAAEUElEQVRoge2ZTWwbRRiGDRTooUJAhUBISIgT4lCERLjCCfGjnkAcEIgLEj30hoRQhUAcoBIXuJBL4YCEZOMEldLZdVLbmVm7dnbWTtsEWYmwY+/uzHpdJ2liuQ0OpHxoNzGEFLx/Y35Uf9J7sOSdfZ7RzOzndSw2qlGNyrMA4BaisQ8JZU1CeZtQ/hXR7LGYgCpWOvcSar2DKV8ilHUIZal86fIjMZGFNf4eVhnsD6F8VqHNV8tluD3omLk5doRQdoqobPPGcVkdAxwQJuDM/F8J7LlhU6HWB1hrPzBoHAC4LVdiL2HKyKDxsrMMZGIcFQKPK+1Dg262T2QLU/Z1rmQ/tXcMSvlhrLF3CeWm1xjZIgOJ6CAr5ttCBFwJlXG/EntkTrnXltgzROVdP9dkCyZIWAfkJKe/KExA0fgrWOXbwST4Nm7AQULZl36+nykwQMRw4SWip5yDQ5iAK1Gyntg5ifi4r6j8dec6XG4+qmj800HfTRfMcUT0cQkbnyFsvObsFaHw/9sCgFsrFbjj30o5xPHsFtaaz2GVlwllPwfdvH4znd9Z78gjEjGYRIxPMIaDvuAVtfnssKD7mfIJj/aKYGPSl4DzdB0qfC44PNpNKseOeC8fynpDgZ81IZULB476AorxhrfAEOBnVAZyhJlH/WWkGG/94wIzTl+jRANHQQQI5UwoPBEDj9wlxF7wFlD55yLgnY5SEgiPsLGK8frdngKqunYXobwQCb5oCoWXsL4hE/Z8LMgTmGjWUaJa7yuqdTJIskV2UlIMMSHGxxLW3zx33nwwdlNXfmHjntwF+z6vyDlxKYftg/rltLSE8hNY5S2vNZ8+bwrcrHp/3fcQ0aXTuPFwKAFC+Ud+Nuy5IcCjHQGYnFqGhFRrJHH7UCD4ahXudH/f7kLSeRt4qwut1WvA7S40eAd+bKzDwtIq0PkW5EtNkJXoT1rUD9FhYmoZ4qjq5htp+VgggTzlj/fhSwstuH79V+htbUOnuwXttU1XxhG4tLgC6qUWEGpBSkCrgHZnfiJV+x3eSQJVx4MtH80e6wu0Vq7BZu8XWNv4CWrGOizW1mCu0obiBRuIZkG6IK5VQFiH5D54V0CqfhFaYOXKJqx3ei648zklcqngffDSn8GFCFiXu2C3r8LC4spQ4RN/Ax9ZoME6booX7SHBNyA+AD6ywNLyFZhfWnXegwqHP4t1T/hIAs5rvtIPbZi92IJ0Qex5f3am4ZwunvChBdyOEuugaBbMqFxod/l91j98PJRAwR5zHibOzcT29DqcydR9g8fDCqSIOTaMDftdOjh8/L8icDr9R2swdAEJm08Kgyc6fDsdHj4eRiBD+WFR8JMR4eNO5OqJWNBC2MhEFZhIRYdPoOpWUjYeCywwrVgPIWLMhZ35pHxjUxY4UvVqXKq6/zOEKozhgJxjT0vYPCZj/bjfJKfqxxNyLVKScv3lM5n6/aHhRzWqm6R+Az1Dmn8oNv4FAAAAAElFTkSuQmCC",
                        decoding: "async"
                    }
                })])]), t._v(" "), e("span", {},
                [t._v("优惠")])]), t._v(" "), e("li", {
                    attrs: {
                        "data-analytics": "button",
                        "data-label": "客服"
                    }
                },
                [e("i"), t._v(" "), e("div", {
                    staticClass: "image_imageContainer__2dKjX image_cover__3B5D- footer_icon__1Rh5j",
                    staticStyle: {
                        cursor: "inherit"
                    }
                },
                [e("div", {
                    staticStyle: {
                        display: "block",
                        overflow: "hidden",
                        position: "absolute",
                        top: "0px",
                        left: "0px",
                        bottom: "0px",
                        right: "0px",
                        "box-sizing": "border-box",
                        margin: "0px"
                    }
                },
                [e("img", {
                    staticClass: "footer_icon__1Rh5j",
                    staticStyle: {
                        position: "absolute",
                        top: "0px",
                        left: "0px",
                        bottom: "0px",
                        right: "0px",
                        "box-sizing": "border-box",
                        padding: "0px",
                        border: "none",
                        margin: "auto",
                        display: "block",
                        width: "0px",
                        height: "0px",
                        "min-width": "100%",
                        "max-width": "100%",
                        "min-height": "100%",
                        "max-height": "100%",
                        "object-fit": "cover"
                    },
                    attrs: {
                        src: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAAsTAAALEwEAmpwYAAAE/UlEQVRoge2ZXWgcVRTHt1rrByr1wRfRgoKQB1+0UuyDHw/Wl2JFiyhWBYUiKFZqDBTUJ8UXkT5aBEGpOJM11obeO/uV5N7ZbDYzm9UQajB17u7OzJ3dtGnzXVONTY7cbdJusjP7kcykBfOHw8IOM/z+55577pndUGhTm9qUr1L1sw+qmeIrVHcOqxn+Jc04X1C9+L6a4S8lfxu9N3QjigxObqcZ51OqOUNE4+AVVHcWqOb0qlrxPcOAW683dyibhVvUjNNKNT5eC9zVjOYUSD8/cN3gRTlQnSe1wVGwitNwfmIOiudm4Ux+ArKnz9Y10NXHARETMLWOEwK3bSi8OsgfFhm0SzOwsLgIF+fmoTR2EUbyE5AZqg+f6LPL8GgpMDE1Qia3b1y9687Ihck5EJq5+A84o7Mw9McYpLLFuvDxVfBo2QS14gBwc/AGdB61ijNl+OnZv+HPwiQkM05DdR9PWa7w6KoJ86tA4anuvKwNluDywiJMTgv4iYY3bay3NjwSQa2FGLEfCazjUI0beXsKxqcugfhUG8x8LNkAPFneDxYKxEBygO8XMKJ8cvYUDDTQaUREm4BHSxEjpRbfDVDNOS6ARKf59fdz9eH7bYgkmwNH11bhiK/wojtQjU8IsP7BUl34Ho2DsobMo6t7wUz7aoBozv2Nbtaefg6KukZwcvVcmPLVQHJgdFfD8HR98GgpstnSHU2DipvEFEl05xjN8IMEYKv4Xh0o7qsH393PRR/3BR6J6LUeKq8+GbsTEfOjnyLsWLuSexsAbnKFHx4e3kZ1fnoFmM6jALBluQN5wqdtf+HJlU4k4DExR8LYAAktB+t0L5PM6NOuU+NAcU8tA10C3kdwVGEAU/uwjFkF/JVox/mnqgyoeuk1VwO686GXgUTaFqen7/CobKDQIinGt6vhRcgo926VAaKVXnc3UGxzM7B6ovQzThETOmKFFhmz790MtGN2aF0GEqkA4btNkJERnIF4gPCd3fkyvBSUgVhvgPBd+RWQvhuIBgh/MrES3ncD0T6+Pyj4E4lcFaCvBiJJ3hZR7X2+w1MTTsTd4f0x0M8holrihG2LJvkuv+E7Yt7w0toMFF91mygxtQ4lUqUdfhroiNaGl5AB4URuh4TYN64HGWbvuBhwnijDpzlg9drpGqHObkJgK6LmjB+ZD0eqRwOpGnAxPAzb2hV20PV61HisyoCY8nrSPIorRgOsWl8vX8fU/NkLDFNLRUlzb62IJs294WhubxhdiXbMPvE2YIyVk0pgq4xZz8oxwjhaBV9hYotCrecV1W6NEP5M5TVM7be8s2s5oSYlYfaZ9yqwE5WJlbHxQrvCWqVo/snQWpVKnb8LEeuC5yoQ+/FGnyUSJWE25LkCCnszFIRER/IuI3Monea3N/IcGeeOeGYfG9MIWfcEYkAAYmoWapTSD/V+qBXlICN22TP7iH0cClKo19qJqXnJu9NYBqbWntX3dcbt+yTMfqzZfRCzTq3lXbhZ1drQnd2F5VLgMmaK2JAyYlkJsYU68H91KOajgcNfM2G9gak5Xwl/smsJvtnAxnw4wl4MbbQQsZ7F1BwV8L+4TJSNhIyNsXW1x/VK0cbv7kwUjsrY+Lc5cLYoIyZJMfZA6EaQmF1EB5ExO1MH/oKE2HdhxHaGblSJrMpK/jkZ5z6QFfa5jFmbrOQOhCPG7vBG/AuzqU39j/QfAdrRLU83fWwAAAAASUVORK5CYII=",
                        decoding: "async"
                    }
                })])]), t._v(" "), e("span", {},
                [t._v("客服")])]), t._v(" "), e("li", {
                    attrs: {
                        "data-analytics": "button",
                        "data-label": "赞助"
                    }
                },
                [e("i"), t._v(" "), e("div", {
                    staticClass: "image_imageContainer__2dKjX image_cover__3B5D- footer_icon__1Rh5j",
                    staticStyle: {
                        cursor: "inherit"
                    }
                },
                [e("div", {
                    staticStyle: {
                        display: "block",
                        overflow: "hidden",
                        position: "absolute",
                        top: "0px",
                        left: "0px",
                        bottom: "0px",
                        right: "0px",
                        "box-sizing": "border-box",
                        margin: "0px"
                    }
                },
                [e("img", {
                    staticClass: "footer_icon__1Rh5j",
                    staticStyle: {
                        position: "absolute",
                        top: "0px",
                        left: "0px",
                        bottom: "0px",
                        right: "0px",
                        "box-sizing": "border-box",
                        padding: "0px",
                        border: "none",
                        margin: "auto",
                        display: "block",
                        width: "0px",
                        height: "0px",
                        "min-width": "100%",
                        "max-width": "100%",
                        "min-height": "100%",
                        "max-height": "100%",
                        "object-fit": "cover"
                    },
                    attrs: {
                        src: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAAsTAAALEwEAmpwYAAAESElEQVRoge2YT2gjVRjAo4J7EPGkIq4HEQQPihfBVe8qiIqeBA+exJPoxbMIiuJJWQQvenClaberrM6bSZqm75tp08wkbbe1pstu0mbevEmTNO12i+2mNm0+maFLp900mTeTtCvkg4+Qf+/9fm++mfnmRSL96Ec/2sa4YT8Nhv0l6PZlanDoeaY5yKopE2DfKWCfiwQNRLwPjNJn1ODbVOd4Ejk2yZGoDCVqukmANSUwf4jPVR4QFlAz/NuTAqc6x6QDDwfw3iTA4oLwpZfAsPeOTgIGx+xfFcxdX8X5azWcXVjBqfkKpmeWQ8JbSFqAH0qVfehbwK33I5MsFNZwp7GH2//u4vrGNpZXNrHIN9zPZ3JV1DJ2MPgURwk6wLtHwSz6FzDsmncS095AJ+rbDbyxUcfllU1csm7iQn4Np/+uYmq6FAh+NGX5gr+dMc18zK9A8/YkDmCz2cRb9QaWqptozJbdUgpb84kJMXjJOQoqf9aXgHciB3qr3sDq6lbgMrkTvvXJKnVIRePPCQvU1m7h6nrdLZduwI+MB4OXggpUalvIy/+4pSQKC4a9BQafp7q967yPh4CXggo4J/D14jrqs2UxeN2uqpnSE+54hv1GbNzaDQMvBRW4uriGc1drODEldqWBDP/YO6ZE2YVTEZjJVVG/Irj6hj2Zz+MZ75gytc8SMMsnLqBlxa48oNs0NVd5pNW4ClgvEDAXTlSAdlxtvgO6/RM17I/U6eVn/Iwva+xlmbJPCLBBt2E7TQEty9+NhAgC7JtTFVCNypNhBCTK3vcrMKwsdV+AZvj5oPByHs8QYFk/8IOk0CMBpynTra+CPDBJlMU6wxcxSvI4IOV7I+B0lDKwpkLZKyICBKxPO8H/SU2MkoIL3xOBhNMO709GgCX9wiPivYSaN9vCjxUxug/eE4ERpx32TEioafoVGNWrj7aD/2OseAi86wIj44fh949A1q9ALof3E2CNVvCXk63huyZwfEfJLkQEgoB5TQQ+vECaY0xr0w4DS3jHSE7yxwm1PpAo+1pS+TuJqRsPec8BCVjJ+//fE0tt4UMJjOkcY579mlbptASEss8VzXpVAvbj0RJxT1qwvlBU600C5q/e734b6QwfXCDNUVGDd5Cd8lJ80Rd8IAFn5eUOKx8mh2P+4YUFxtLuDao38GDixdjBDWqg2wLJtHXsNl83ckgRW/kBUQEiuF/jN53tw0FZfOUHRAV6UzYHTdn/SwDYnvN6tK+5qwUImDMErPdkrfzwxETtwYty4fWoVIjd9QLEAdest44bNyoXXwwjMtwrAQdcptbbvgYPITLsWwBYzSf4FRHw0CLxgrvT1zEImJf8gCPiPZEuxJCSPxcl+Xg7+ChZ9P28EUmmrKckMNd7De5XJCrnd0Yn+WsRkaC6fZZQ67wETCPAfnG6yF6BtxSRC99HpYI2pBR+pin7+Tt+1I9+9CPixH88983PRtjROwAAAABJRU5ErkJggg==",
                        decoding: "async"
                    }
                })])]), t._v(" "), e("span", {},
                [t._v("赞助")])]), t._v(" "), e("li", {
                    attrs: {
                        "data-analytics": "button",
                        "data-label": "我的"
                    }
                },
                [e("i"), t._v(" "), e("div", {
                    staticClass: "image_imageContainer__2dKjX image_cover__3B5D- footer_icon__1Rh5j",
                    staticStyle: {
                        cursor: "inherit"
                    }
                },
                [e("div", {
                    staticStyle: {
                        display: "block",
                        overflow: "hidden",
                        position: "absolute",
                        top: "0px",
                        left: "0px",
                        bottom: "0px",
                        right: "0px",
                        "box-sizing": "border-box",
                        margin: "0px"
                    }
                },
                [e("img", {
                    staticClass: "footer_icon__1Rh5j",
                    staticStyle: {
                        position: "absolute",
                        top: "0px",
                        left: "0px",
                        bottom: "0px",
                        right: "0px",
                        "box-sizing": "border-box",
                        padding: "0px",
                        border: "none",
                        margin: "auto",
                        display: "block",
                        width: "0px",
                        height: "0px",
                        "min-width": "100%",
                        "max-width": "100%",
                        "min-height": "100%",
                        "max-height": "100%",
                        "object-fit": "cover"
                    },
                    attrs: {
                        src: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAAsTAAALEwEAmpwYAAAEPUlEQVRoge2XT2gcVRzHp2gVKoIUBFvBgxdBvXhSg3gRKRVET4IKepOKCJ48eVAhCIIoEk+CByPsJE2KJe/NbppN3pvtZrOTTFMLbdXMbPa9nbfbNdsmsUla3dL85M0mm7HMrrM7O7MV8oPvZfYPn+/v/X6/9xtF2Y/92I+eRcasHdHz4j1qON+SvBijhpOkefEDzYvP9fnKiwBwj3I3BjXE89QQM9QQ2yTvQCtRQ9Sm58Qnplk5pNwNYZqVQzQvhttBezWdcwBTBpjySjLDX+orfHaxdpQaYjE4fAkwYYB2hCm/pdHS+/3LvA/84sU/QFQ3YPNGHeq3bsPGVh3OLghIzzqAKG/Ce4V1/kbsBojh/OQFl5DlHfA7lTXLvuBNUb6lZfiTscHr8+UBL/zsuTJUa1uwun7TVW31BhRK63Bp6SrkzlXaw5PdcmJabAaI4dC9qeIAE3/CldqmK4utQWZBuJ+dOVsKBI92lCT8hbgatzkqz19eAV6+7urCb7XmqUx2CI8ap/Bd5AaIIU54y+f35VVYKq7BZeta81mqC3jkiovoDcw7Q7ugsjkvLl11JftAPktm/CdNUBGy9lCkBqjhnPI2rxybUi68Hg4eEQaRTyOaF1Pe0Tl3vuJOml7AI2mAiOeiNWCI0TsvL42GB0e7kyhbfiJqA4PN1WDOkbdoz+ARZX9rFtwfrYEF5/jeUvZveI3yV00TDv6XsM6/aGEgp0Qdcp+fmSstI5+ywZR/GeQ/MOWzvvWv83eUOAJl+IctMrg2la081u63GnWOY8q3/e4A04SDsRiYvFB9ABFW9b1NCctjsvKIL7xefgZTtuI/ffhHSpyBdDaACfvL/yT4qkb5x/I70znnUUz5y0jnX8v939e0zsYB4IASd2DdeSvs5ME6Nyf6+Xqp6extWfvdjU1+elS78rDS72iUCUsGzjph60jn7/YFFgAOJDOlY5jwbzDl84jyMqbsJqasHjjzM/y2iu16AlubKrK5iuy0qlmfqZP205HCyzmNKC+EqfkJUgQVWZBoIRXZmTFcfLan4Nls7UFEeDpsw07MFFuCJ7wmsL0tT6Qn8HI/l7M9LPzp6WDwCa9wYSjUeE3lnMOIcDM0fLoLeLRrwhru2gAmfCws/M9nlruHRw2N4MKJjuGTuvNKWPhTU+HhE25jW9dHU87hzrJPuR4Gfnyy0BP4xF4pfRoYPpXlT4WBP5nqMTySsquEwL2BDCDKBruGT9oRwFuNXtDs14OWz0I38CPJKDJvecqoMBTwBPhG5/DRZT7RbGabBC2hXzuCx9HDJxo6GbSEvg8GXwQVxwIObg9g64NABlIZdgRTfq0d/ARhcrTFBq8i65fRS3BfIANuGelsoNXmKZeydhtlz+GxnR1P88eVbl7eMS29iSn7ClM+LIUIG5b7SdRSsf3jCLIHVWy91pf35f3YD+X/E/8AJUVb1128F3IAAAAASUVORK5CYII=",
                        decoding: "async"
                    }
                })])]), t._v(" "), e("span", {},
                [t._v("我的")])])])])
            }]
        };
        var V = e("VU/8")(O, q, !1,
        function(t) {
            e("J5PR")
        },
        "data-v-45178989", null).exports,
        j = {
            name: "activityInfo",
            data: function() {
                return {
                    dataInfo: {}
                }
            },
            created: function() {
                var t = this.$route.query;
                t.id && this.getInfo(t.id)
            },
            methods: {
                getInfo: function(t) {
                    var a = this;
                    a.$parent.showLoading(),
                    a.$apiFun.post("/api/activitydeatil", {
                        id: t
                    }).then(function(t) {
                        console.log(t),
                        200 !== t.code && a.$parent.showTost(0, t.message),
                        200 === t.code && (a.dataInfo = t.data),
                        a.$parent.hideLoading()
                    })
                },
                doactivityapply: function() {
                    var t = this;
                    t.$parent.showLoading(),
                    t.$apiFun.post("/api/doactivityapply", {
                        activityid: t.dataInfo.id
                    }).then(function(a) {
                        t.$parent.hideLoading(),
                        t.$parent.showTost(1, a.message)
                    })
                }
            },
            mounted: function() {},
            updated: function() {},
            beforeDestroy: function() {}
        },
        M = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", [e("van-nav-bar", {
                    staticStyle: {
                        position: "fixed",
                        top: "0",
                        left: "0",
                        width: "100%",
                        "background-color": "#ede9e7"
                    },
                    attrs: {
                        title: "活动详情",
                        "left-arrow": ""
                    },
                    on: {
                        "click-left": function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        height: "46px"
                    }
                }), t._v(" "), t.dataInfo.title ? e("div", [e("img", {
                    staticStyle: {
                        width: "100%",
                        display: "block"
                    },
                    attrs: {
                        src: t.dataInfo.banner,
                        alt: ""
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        "text-align": "center",
                        "font-size": "16px",
                        "padding-top": "15px"
                    }
                },
                [t._v(t._s(t.dataInfo.title))]), t._v(" "), e("van-divider", {
                    style: {
                        color: "#000",
                        borderColor: "#ccc",
                        padding: "10px",
                        width: "50%",
                        margin: "0 auto"
                    },
                    attrs: {
                        dashed: ""
                    }
                },
                [t._v("活动详情")]), t._v(" "), e("div", {
                    staticClass: "tables",
                    domProps: {
                        innerHTML: t._s(t.dataInfo.content)
                    }
                }), t._v(" "), e("van-divider", {
                    style: {
                        color: "#000",
                        borderColor: "#ccc",
                        padding: "10px",
                        width: "50%",
                        margin: "0 auto"
                    },
                    attrs: {
                        dashed: ""
                    }
                },
                [t._v("活动说明")]), t._v(" "), e("div", {
                    staticClass: "tables",
                    domProps: {
                        innerHTML: t._s(t.dataInfo.memo)
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        height: "120px"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "bonsf"
                },
                [t.$store.state.token ? e("div", {
                    staticClass: "btsdn",
                    on: {
                        click: t.doactivityapply
                    }
                },
                [t._v("立即申请")]) : e("div", {
                    staticClass: "btsdn",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/login")
                        }
                    }
                },
                [t._v("前往登录")])])], 1) : t._e()], 1)
            },
            staticRenderFns: []
        };
        var G = e("VU/8")(j, M, !1,
        function(t) {
            e("blE4")
        },
        "data-v-76769714", null).exports,
        Y = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticStyle: {
                        height: "100vh",
                        "overflow-y": "scroll",
                        "-webkit-overflow-scrolling": "touch"
                    }
                },
                [e("img", {
                    staticClass: "bancgs",
                    attrs: {
                        src: "/static/image/bank_020021515.png",
                        alt: ""
                    },
                    on: {
                        click: function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), 1 == t.type ? e("iframe", {
                    ref: "iframe",
                    staticStyle: {
                        height: "calc(100% - 6px)",
                        width: "100%"
                    },
                    attrs: {
                        src: "http://admin2.tggames.cc/h5/1.html",
                        scrolling: "auto",
                        frameborder: "0",
                        id: "iframe"
                    }
                }) : t._e(), t._v(" "), 2 == t.type ? e("iframe", {
                    ref: "iframe",
                    staticStyle: {
                        height: "calc(100% - 6px)",
                        width: "100%"
                    },
                    attrs: {
                        src: "http://admin2.tggames.cc/h5/2.html",
                        scrolling: "auto",
                        frameborder: "0",
                        id: "iframe"
                    }
                }) : t._e()])
            },
            staticRenderFns: []
        };
        var J = e("VU/8")({
            name: "zhanzhuye",
            data: function() {
                return {
                    type: 1
                }
            },
            created: function() {
                var t = this.$route.query;
                this.type = t.type
            },
            methods: {},
            mounted: function() {},
            updated: function() {}
        },
        Y, !1,
        function(t) {
            e("5FF6")
        },
        "data-v-71f06ada", null).exports,
        X = {
            name: "vip",
            data: function() {
                return {
                    url: null,
                    vipLis: [],
                    vipTab: 1,
                    bfNum: 0
                }
            },
            created: function() {
                this.$store.state.token && (this.vipTab = this.$store.state.userInfo.vip),
                this.uservip()
            },
            methods: {
                swiperChang: function(t) {
                    console.log(t)
                },
                changvipTab: function(t) {
                    this.vipTab = t
                },
                uservip: function() {
                    var t = this;
                    t.$parent.showLoading(),
                    t.$apiFun.post("/api/uservip", {}).then(function(a) {
                        if (200 == a.code) {
                            t.vipLis = a.data,
                            t.getbfNum();
                            new Swiper(".swiper-container", {
                                loop: !1,
                                autoplay: !1,
                                grabCursor: !0,
                                slidesPerView: 1,
                                initialSlide: t.vipTab - 1,
                                observer: !0,
                                observeParents: !0,
                                on: {
                                    slideChangeTransitionEnd: function() {
                                        t.vipTab = this.realIndex + 1
                                    }
                                }
                            })
                        }
                        t.$parent.hideLoading()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    })
                },
                getbfNum: function() {
                    var t = 0,
                    a = 1 * this.$store.state.userInfo.vip;
                    this.vipLis.forEach(function(e, i) {
                        console.log(),
                        i == a && (t = 1 * e.recharge)
                    });
                    var e = 1 * this.$store.state.userInfo.paysum,
                    i = 0 == e || 0 == t ? 0 : Math.round(e / t * 100);
                    this.bfNum = i > 100 ? 100 : i
                }
            },
            mounted: function() {},
            updated: function() {}
        },
        H = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return t.vipLis.length > 0 ? e("div", {
                    staticStyle: {
                        "background-color": "#f1f1f1",
                        "min-height": "100vh"
                    }
                },
                [e("van-nav-bar", {
                    staticStyle: {
                        position: "fixed",
                        top: "0",
                        left: "0",
                        width: "100%",
                        "background-color": "#ede9e7"
                    },
                    attrs: {
                        title: "VIP特权",
                        "left-arrow": ""
                    },
                    on: {
                        "click-left": function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        height: "46px"
                    }
                }), t._v(" "), e("img", {
                    staticStyle: {
                        width: "100%"
                    },
                    attrs: {
                        src: "/static/image/xiangqing@2x.8b5b315d4cf3a4593fab14da84b35192.jpg",
                        alt: ""
                    }
                }), t._v(" "), e("div", {
                    staticClass: "vipType"
                },
                t._l(10,
                function(a, i) {
                    return e("div", {
                        key: i,
                        staticClass: "vipLis",
                        on: {
                            click: function(e) {
                                return t.changvipTab(a)
                            }
                        }
                    },
                    [e("img", {
                        class: a == t.vipTab ? "imgsd": "",
                        attrs: {
                            src: "/static/image/vip-" + a + ".png",
                            alt: ""
                        }
                    }), t._v("\n      VIP" + t._s(a) + "\n    ")])
                }), 0), t._v(" "), e("div", {
                    staticClass: "vipshow"
                },
                [e("div", {
                    staticClass: "bisx"
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/vip-" + t.vipTab + "_bg.png",
                        alt: ""
                    }
                }), t._v(" "), e("div", {
                    staticClass: "ishw"
                },
                [t._v(t._s(1 * t.$store.state.userInfo.vip >= 1 * t.vipTab ? "已达标": "未达标"))]), t._v(" "), e("div", {
                    staticClass: "vip"
                },
                [t._v("VIP" + t._s(t.vipTab))]), t._v(" "), e("div", {
                    staticClass: "leiji"
                },
                [e("span", [t._v("累计存款")]), e("span", {
                    staticClass: "megs"
                },
                [t._v(t._s(t.vipLis[t.vipTab - 1].recharge) + " ")])]), t._v(" "), e("div", {
                    staticClass: "liushui"
                },
                [e("span", [t._v("流水要求")]), e("span", {
                    staticClass: "megs"
                },
                [t._v(t._s(t.vipLis[t.vipTab - 1].flow))])])])]), t._v(" "), t._m(0), t._v(" "), e("div", {
                    staticClass: "vipDetailStyle__table__2KDLc guize_con",
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [e("div", {
                    staticClass: "month__table__vcSJ7",
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [e("ul", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [t._m(1), t._v(" "), t._l(10,
                function(a, i) {
                    return e("li", {
                        key: i,
                        attrs: {
                            "data-v-f2b5b3f8": ""
                        }
                    },
                    [e("span", {
                        attrs: {
                            "data-v-f2b5b3f8": ""
                        }
                    },
                    [t._v("VIP" + t._s(a))])])
                })], 2), t._v(" "), e("div", {
                    staticClass: "month__tableContent__q7JRn",
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [e("ul", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [t._m(2), t._v(" "), t._l(10,
                function(a, i) {
                    return e("li", {
                        key: i,
                        attrs: {
                            "data-v-f2b5b3f8": ""
                        }
                    },
                    [e("span", {
                        attrs: {
                            "data-v-f2b5b3f8": ""
                        }
                    },
                    [t._v(t._s(t.vipLis[i].realperson))])])
                })], 2), t._v(" "), e("ul", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [t._m(3), t._v(" "), t._l(10,
                function(a, i) {
                    return e("li", {
                        key: i,
                        attrs: {
                            "data-v-f2b5b3f8": ""
                        }
                    },
                    [e("span", {
                        attrs: {
                            "data-v-f2b5b3f8": ""
                        }
                    },
                    [t._v(t._s(t.vipLis[i].sport))])])
                })], 2), t._v(" "), e("ul", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [t._m(4), t._v(" "), t._l(10,
                function(a, i) {
                    return e("li", {
                        key: i,
                        attrs: {
                            "data-v-f2b5b3f8": ""
                        }
                    },
                    [e("span", {
                        attrs: {
                            "data-v-f2b5b3f8": ""
                        }
                    },
                    [t._v(t._s(t.vipLis[i].e_sport))])])
                })], 2), t._v(" "), e("ul", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [t._m(5), t._v(" "), t._l(10,
                function(a, i) {
                    return e("li", {
                        key: i,
                        attrs: {
                            "data-v-f2b5b3f8": ""
                        }
                    },
                    [e("span", {
                        attrs: {
                            "data-v-f2b5b3f8": ""
                        }
                    },
                    [t._v(t._s(t.vipLis[i].joker))])])
                })], 2), t._v(" "), e("ul", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [t._m(6), t._v(" "), t._l(10,
                function(a, i) {
                    return e("li", {
                        key: i,
                        attrs: {
                            "data-v-f2b5b3f8": ""
                        }
                    },
                    [e("span", {
                        attrs: {
                            "data-v-f2b5b3f8": ""
                        }
                    },
                    [t._v(t._s(t.vipLis[i].electron))])])
                })], 2), t._v(" "), e("ul", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [t._m(7), t._v(" "), t._l(10,
                function(a, i) {
                    return e("li", {
                        key: i,
                        attrs: {
                            "data-v-f2b5b3f8": ""
                        }
                    },
                    [e("span", {
                        attrs: {
                            "data-v-f2b5b3f8": ""
                        }
                    },
                    [t._v(t._s(t.vipLis[i].lottery))])])
                })], 2)])])]), t._v(" "), t._m(8)], 1) : t._e()
            },
            staticRenderFns: [function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "fanshiw"
                },
                [a("img", {
                    attrs: {
                        "data-v-f2b5b3f8": "",
                        src: "/static/image/xiangqing.af99e65ed557473a7e18a21288144c2d.png",
                        alt: ""
                    }
                }), this._v("\n    VIP最高返水比例\n  ")])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("li", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [a("span", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [this._v("VIP等级")])])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("li", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [a("span", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [this._v("真人(%)")])])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("li", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [a("span", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [this._v("体育(%)")])])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("li", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [a("span", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [this._v("电竞(%)")])])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("li", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [a("span", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [this._v("棋牌(%)")])])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("li", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [a("span", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [this._v("电子(%)")])])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("li", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [a("span", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [this._v("彩票(%)")])])
            },
            function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticClass: "vipDetailStyle__vipDetail__2q9TP"
                },
                [e("div", {
                    staticClass: "vipDetailStyle__vipInfo__3IZIT",
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [e("div", {
                    staticClass: "vipDetailStyle__rule__2s4Rz",
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [e("h2", {
                    staticStyle: {
                        margin: "0"
                    },
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [e("span", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [t._v("活动规则")])]), t._v(" "), e("h4", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [e("span", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [t._v("1")]), t._v("晋升标准")]), t._v(" "), e("p", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [t._v("会员的累计存款以及累计流水达到相应级别的要求，即可在次日24点前晋级相应VIP等级。")]), t._v(" "), e("h4", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [e("span", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [t._v("2")]), t._v("晋升顺序")]), t._v(" "), e("p", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [t._v("VIP等级达到相应的要求可每天晋升一级，但VIP等级不可越级晋升。")]), t._v(" "), e("h4", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [e("span", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [t._v("3")]), t._v("保级要求")]), t._v(" "), e("p", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [t._v("会员在达到某VIP等级后，90天内投注需要完成保级流水要求。如果在此期间完成晋升，保级要求重新按照当前等级计算。")]), t._v(" "), e("h4", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [e("span", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [t._v("4")]), t._v("降级标准")]), t._v(" "), e("p", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [t._v("如果会员在一个季度（90天计算）内没有完成相应的保级要求流水，系统会自动降级一个等级，相应的返水及其它优惠也会随之调整至降级后的等级。")]), t._v(" "), e("h4", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [e("span", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [t._v("8")]), t._v("VIP返水")]), t._v(" "), e("p", {
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [t._v("VIP返水优惠发放金额根据会员当天北京时间00:00—23:59之间的有效投注进行计算，当天所有的投注额返水将在注单结算当天结束后24小时内发放到福利中心，进入个人中心点击福利中心进行手动领取。（VIP返水1倍流水即可提款）")]), t._v(" "), e("div", {
                    staticClass: "vipDetailStyle__note__2kqnK",
                    attrs: {
                        "data-v-f2b5b3f8": ""
                    }
                },
                [t._v("欧宝娱乐保留对活动的修改，停止及最终解释权")])])])])
            }]
        };
        var Q = e("VU/8")(X, H, !1,
        function(t) {
            e("ET9V")
        },
        "data-v-8c6f9632", null).exports,
        W = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticClass: "app app-ti_green",
                    attrs: {
                        "data-v-f531b812": ""
                    }
                },
                [e("div", {
                    staticClass: "header",
                    attrs: {
                        "data-v-8a75a126": "",
                        "data-v-f531b812": ""
                    }
                },
                [e("div", {
                    staticClass: "header__top-wrapper",
                    attrs: {
                        "data-v-8a75a126": ""
                    }
                },
                [e("div", {
                    staticClass: "van-nav-bar van-nav-bar--fixed fixed-top nav-header",
                    attrs: {
                        "data-v-8a75a126": ""
                    }
                },
                [e("div", {
                    staticClass: "van-nav-bar__content"
                },
                [e("div", {
                    staticClass: "van-nav-bar__left",
                    on: {
                        click: function(a) {
                            return t.$router.back()
                        }
                    }
                },
                [e("i", {
                    staticClass: "van-icon van-icon-arrow-left van-nav-bar__arrow"
                })]), t._v(" "), e("div", {
                    staticClass: "van-nav-bar__title van-ellipsis"
                },
                [t._v("合营计划")])])])])]), t._v(" "), e("div", {
                    staticClass: "pahsn"
                },
                [e("img", {
                    staticStyle: {
                        display: "block",
                        width: "80%",
                        margin: "0 auto",
                        "padding-top": "30px"
                    },
                    attrs: {
                        "data-v-56fcd294": "",
                        src: "/static/image/__al__title01.7a3975958589d48b22c30b3b976a95fc.png"
                    }
                }), t._v(" "), e("img", {
                    staticStyle: {
                        display: "block",
                        width: "100%",
                        margin: "0 auto"
                    },
                    attrs: {
                        "data-v-56fcd294": "",
                        src: "/static/image/__al__person01.8b896040f87c2dfffa7e8de68ed19c42.png"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "zixun",
                    on: {
                        click: t.$parent.openKefu
                    }
                },
                [e("img", {
                    attrs: {
                        "data-v-56fcd294": "",
                        src: "/static/image/16044962635685155.png"
                    }
                }), t._v(" "), t._m(0), t._v(" "), e("div", {
                    staticClass: "zusnb"
                },
                [t._v("咨询")])]), t._v(" "), e("div", {
                    staticClass: "bsd"
                },
                [e("van-form", [e("van-field", {
                    attrs: {
                        label: "用户名",
                        disabled: ""
                    },
                    model: {
                        value: t.$store.state.userInfo.username,
                        callback: function(a) {
                            t.$set(t.$store.state.userInfo, "username", a)
                        },
                        expression: "$store.state.userInfo.username"
                    }
                }), t._v(" "), e("van-field", {
                    attrs: {
                        label: "真实姓名",
                        disabled: ""
                    },
                    model: {
                        value: t.$store.state.userInfo.realname,
                        callback: function(a) {
                            t.$set(t.$store.state.userInfo, "realname", a)
                        },
                        expression: "$store.state.userInfo.realname"
                    }
                }), t._v(" "), e("van-field", {
                    attrs: {
                        label: "联系方式",
                        placeholder: "请输入您的联系方式"
                    },
                    model: {
                        value: t.info.mobile,
                        callback: function(a) {
                            t.$set(t.info, "mobile", a)
                        },
                        expression: "info.mobile"
                    }
                }), t._v(" "), e("van-field", {
                    attrs: {
                        label: "申请理由",
                        placeholder: "请输入申请说明"
                    },
                    model: {
                        value: t.info.apply_info,
                        callback: function(a) {
                            t.$set(t.info, "apply_info", a)
                        },
                        expression: "info.apply_info"
                    }
                })], 1), t._v(" "), e("van-button", {
                    staticStyle: {
                        background: "#cf866b",
                        color: "#fff"
                    },
                    attrs: {
                        block: ""
                    },
                    on: {
                        click: t.shenqing
                    }
                },
                [t._v("加入我们")])], 1)])])
            },
            staticRenderFns: [function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "cnets"
                },
                [a("div", {
                    staticClass: "tos"
                },
                [this._v("合营部")]), this._v(" "), a("div", {
                    staticClass: "bos"
                },
                [this._v("立即咨询")])])
            }]
        };
        var K = e("VU/8")({
            name: "applyagent",
            data: function() {
                return {
                    info: {}
                }
            },
            created: function() {},
            methods: {
                shenqing: function() {
                    var t = this,
                    a = t.info;
                    /^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/.test(a.mobile) ? a.apply_info ? (t.$parent.showLoading(), t.$apiFun.post("/api/applyagentdo", a).then(function(a) {
                        t.$parent.showTost(1, a.message),
                        t.$parent.hideLoading()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    })) : t.$parent.showTost(0, "请输入申请理由") : t.$parent.showTost(0, "请输入正确手机号")
                }
            },
            mounted: function() {},
            updated: function() {}
        },
        W, !1,
        function(t) {
            e("nMs0")
        },
        "data-v-6a3c34f8", null).exports,
        Z = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", [e("div", {
                    staticStyle: {
                        height: "180px"
                    }
                }), t._v(" "), e("img", {
                    staticClass: "bancgs",
                    attrs: {
                        src: "/static/image/bank_020021515.png",
                        alt: ""
                    },
                    on: {
                        click: function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), t._m(0), t._v(" "), e("div", {
                    staticClass: "bosfs"
                },
                [e("div", {
                    staticClass: "hgsw",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/boutBallBetInfo?type=7")
                        }
                    }
                },
                [e("img", {
                    staticClass: "firsimg",
                    attrs: {
                        src: "/static/image/1587555761884253.png",
                        alt: ""
                    }
                }), t._v(" "), e("span", {
                    staticClass: "tit"
                },
                [t._v("关于我们")]), t._v(" "), e("span", {
                    staticClass: "tisf"
                }), t._v(" "), e("img", {
                    staticClass: "rigiong",
                    attrs: {
                        src: "/static/style/icoArrowGrey@2x.abc43ab099390c4587d33290a76fc15e.png",
                        alt: ""
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "hgsw",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/boutBallBetInfo?type=1")
                        }
                    }
                },
                [e("img", {
                    staticClass: "firsimg",
                    attrs: {
                        src: "/static/image/1587555761884253.png",
                        alt: ""
                    }
                }), t._v(" "), e("span", {
                    staticClass: "tit"
                },
                [t._v("常见问题")]), t._v(" "), e("span", {
                    staticClass: "tisf"
                }), t._v(" "), e("img", {
                    staticClass: "rigiong",
                    attrs: {
                        src: "/static/style/icoArrowGrey@2x.abc43ab099390c4587d33290a76fc15e.png",
                        alt: ""
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "hgsw",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/boutBallBetInfo?type=2")
                        }
                    }
                },
                [e("img", {
                    staticClass: "firsimg",
                    attrs: {
                        src: "/static/image/1587555761884253.png",
                        alt: ""
                    }
                }), t._v(" "), e("span", {
                    staticClass: "tit"
                },
                [t._v("隐私政策")]), t._v(" "), e("span", {
                    staticClass: "tisf"
                }), t._v(" "), e("img", {
                    staticClass: "rigiong",
                    attrs: {
                        src: "/static/style/icoArrowGrey@2x.abc43ab099390c4587d33290a76fc15e.png",
                        alt: ""
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "hgsw",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/boutBallBetInfo?type=3")
                        }
                    }
                },
                [e("img", {
                    staticClass: "firsimg",
                    attrs: {
                        src: "/static/image/1587555761884253.png",
                        alt: ""
                    }
                }), t._v(" "), e("span", {
                    staticClass: "tit"
                },
                [t._v("免责说明")]), t._v(" "), e("span", {
                    staticClass: "tisf"
                }), t._v(" "), e("img", {
                    staticClass: "rigiong",
                    attrs: {
                        src: "/static/style/icoArrowGrey@2x.abc43ab099390c4587d33290a76fc15e.png",
                        alt: ""
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "hgsw",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/boutBallBetInfo?type=4")
                        }
                    }
                },
                [e("img", {
                    staticClass: "firsimg",
                    attrs: {
                        src: "/static/image/1587555761884253.png",
                        alt: ""
                    }
                }), t._v(" "), e("span", {
                    staticClass: "tit"
                },
                [t._v("联系我们")]), t._v(" "), e("span", {
                    staticClass: "tisf"
                }), t._v(" "), e("img", {
                    staticClass: "rigiong",
                    attrs: {
                        src: "/static/style/icoArrowGrey@2x.abc43ab099390c4587d33290a76fc15e.png",
                        alt: ""
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "hgsw",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/boutBallBetInfo?type=5")
                        }
                    }
                },
                [e("img", {
                    staticClass: "firsimg",
                    attrs: {
                        src: "/static/image/1587555761884253.png",
                        alt: ""
                    }
                }), t._v(" "), e("span", {
                    staticClass: "tit"
                },
                [t._v("代理加盟")]), t._v(" "), e("span", {
                    staticClass: "tisf"
                }), t._v(" "), e("img", {
                    staticClass: "rigiong",
                    attrs: {
                        src: "/static/style/icoArrowGrey@2x.abc43ab099390c4587d33290a76fc15e.png",
                        alt: ""
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "hgsw",
                    staticStyle: {
                        border: "none"
                    },
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/boutBallBetInfo?type=8")
                        }
                    }
                },
                [e("img", {
                    staticClass: "firsimg",
                    attrs: {
                        src: "/static/image/1587555761884253.png",
                        alt: ""
                    }
                }), t._v(" "), e("span", {
                    staticClass: "tit"
                },
                [t._v("博彩责任")]), t._v(" "), e("span", {
                    staticClass: "tisf"
                }), t._v(" "), e("img", {
                    staticClass: "rigiong",
                    attrs: {
                        src: "/static/style/icoArrowGrey@2x.abc43ab099390c4587d33290a76fc15e.png",
                        alt: ""
                    }
                })])]), t._v(" "), e("div", {
                    staticStyle: {
                        "margin-top": "0.48rem",
                        "text-align": "center",
                        color: "#6c7c9d",
                        "padding-bottom": "0.6rem"
                    }
                },
                [t._v("没有找到解决办法？请联系"), e("a", {
                    staticStyle: {
                        color: "#597ef7",
                        "font-weight": "600"
                    },
                    on: {
                        click: t.$parent.openKefu
                    }
                },
                [t._v("人工客服")]), t._v("解决")])])
            },
            staticRenderFns: [function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "topsf"
                },
                [a("div", {
                    staticClass: "tois"
                },
                [a("img", {
                    attrs: {
                        src: "/static/style/tx.0d38194b71b5a32ef1df50b7090ca7f5.png",
                        alt: ""
                    }
                }), this._v(" "), a("div", {
                    staticClass: "dwd"
                },
                [a("div", {
                    staticClass: "tisaa"
                },
                [this._v("Hi,尊敬的会员用户")]), this._v(" "), a("div", {
                    staticClass: "newsa"
                },
                [this._v("早上好，欢迎来到帮助中心")])])]), this._v(" "), a("div", {
                    staticStyle: {
                        color: "#fff",
                        "text-align": "center",
                        "margin-top": "20px"
                    }
                },
                [this._v("若相关问题仍未解决，可咨询在线客服")])])
            }]
        };
        var tt = e("VU/8")({
            name: "boutBallBet",
            data: function() {
                return {
                    url: null
                }
            },
            created: function() {},
            methods: {},
            mounted: function() {},
            updated: function() {}
        },
        Z, !1,
        function(t) {
            e("JOYd")
        },
        "data-v-15276896", null).exports,
        at = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticClass: "sdddd"
                },
                [e("div", {
                    staticStyle: {
                        height: "180px"
                    }
                }), t._v(" "), e("img", {
                    staticClass: "bancgs",
                    attrs: {
                        src: "/static/image/bank_020021515.png",
                        alt: ""
                    },
                    on: {
                        click: function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticClass: "topsf"
                },
                [t._m(0), t._v(" "), e("div", {
                    staticStyle: {
                        color: "#fff",
                        "text-align": "center",
                        "margin-top": "10px",
                        "font-size": "20px"
                    }
                },
                [t._v(t._s(t.title))])]), t._v(" "), e("div", {
                    staticStyle: {
                        color: "#666",
                        padding: "0px 20px",
                        "box-sizing": "border-box"
                    },
                    domProps: {
                        innerHTML: t._s(t.dataBox.content)
                    }
                }), t._v(" "), t.dataBox.content ? e("div", {
                    staticStyle: {
                        "margin-top": "0.48rem",
                        "text-align": "center",
                        color: "#6c7c9d",
                        "padding-bottom": "0.6rem"
                    }
                },
                [t._v("没有找到解决办法？请联系"), e("a", {
                    staticStyle: {
                        color: "#597ef7",
                        "font-weight": "600"
                    },
                    on: {
                        click: t.$parent.openKefu
                    }
                },
                [t._v("人工客服")]), t._v("解决")]) : t._e()])
            },
            staticRenderFns: [function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "tois"
                },
                [a("img", {
                    attrs: {
                        src: "/static/style/tx.0d38194b71b5a32ef1df50b7090ca7f5.png",
                        alt: ""
                    }
                }), this._v(" "), a("div", {
                    staticClass: "dwd"
                },
                [a("div", {
                    staticClass: "tisaa"
                },
                [this._v("Hi,尊敬的会员用户")]), this._v(" "), a("div", {
                    staticClass: "newsa"
                },
                [this._v("早上好，欢迎来到帮助中心")]), this._v(" "), a("div", {
                    staticClass: "newsa"
                },
                [this._v("若相关问题仍未解决，可咨询在线客服")])])])
            }]
        };
        var et = e("VU/8")({
            name: "boutBallBetInfo",
            data: function() {
                return {
                    title: "",
                    type: 0,
                    dataBox: {}
                }
            },
            created: function() {
                var t = this.$route.query;
                if (t.type) {
                    var a = 1 * t.type;
                    this.type = a,
                    1 == a && (this.title = "常见问题"),
                    2 == a && (this.title = "隐私政策"),
                    3 == a && (this.title = "免责说明"),
                    4 == a && (this.title = "联系我们"),
                    5 == a && (this.title = "代理加盟"),
                    7 == a && (this.title = "关于我们"),
                    8 == a && (this.title = "博彩责任"),
                    this.getAllCont(a)
                }
            },
            methods: {
                getAllCont: function(t) {
                    var a = this;
                    a.$parent.showLoading(),
                    a.$apiFun.post("/api/article", {
                        type: t
                    }).then(function(t) {
                        a.dataBox = t.data,
                        a.$parent.hideLoading()
                    }).
                    catch(function(t) {
                        a.$parent.hideLoading()
                    })
                }
            },
            mounted: function() {},
            updated: function() {}
        },
        at, !1,
        function(t) {
            e("QhRG")
        },
        "data-v-40758cc9", null).exports,
        it = {
            name: "message",
            data: function() {
                return {
                    type: 1,
                    noticeList: [],
                    homenoticelis: [],
                    noticeListInfo: {},
                    page: 1
                }
            },
            created: function() {
                var t = this.$route.query;
                t.type && (this.type = 1 * t.type),
                this.homenotice(),
                this.getDatalist()
            },
            methods: {
                changType: function(t) {
                    this.type = t
                },
                homenotice: function() {
                    var t = this;
                    t.$parent.showLoading(),
                    t.$apiFun.post("/api/homenotice", {}).then(function(a) {
                        200 != a.code && t.showTost(0, a.message),
                        200 == a.code && (t.homenoticelis = a.data),
                        t.$parent.hideLoading()
                    })
                },
                getDatalist: function() {
                    var t = this,
                    a = t.page;
                    a > t.noticeListInfo.last_page ? t.loading = !1 : (t.$parent.showLoading(), t.$apiFun.post("/api/noticeList", {
                        page: a
                    }).then(function(e) {
                        if (200 != e.code && t.$parent.showTost(0, e.message), 200 == e.code) {
                            if (t.noticeListInfo = e.data, 1 == a) t.noticeList = e.data.data;
                            else {
                                var i = JSON.parse(n()(t.list4));
                                e.data.data.forEach(function(t) {
                                    i.push(t)
                                }),
                                t.noticeList = i
                            }
                            t.page = a + 1
                        }
                        t.loading = !1,
                        t.$parent.hideLoading()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    }))
                }
            },
            mounted: function() {},
            updated: function() {},
            beforeDestroy: function() {}
        },
        st = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", [e("van-nav-bar", {
                    staticStyle: {
                        position: "fixed",
                        top: "0",
                        left: "0",
                        width: "100%",
                        "background-color": "#ede9e7"
                    },
                    attrs: {
                        title: "消息中心",
                        "left-arrow": ""
                    },
                    on: {
                        "click-left": function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        height: "60px"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "van-tabs-view van-tabs"
                },
                [e("div", {
                    staticClass: "van-tabs__wrap"
                },
                [e("div", {
                    staticClass: "van-tabs__nav van-tabs__nav--card",
                    attrs: {
                        role: "tablist"
                    }
                },
                [e("div", {
                    class: 1 == t.type ? "van-tab van-tab--active": "van-tab",
                    attrs: {
                        role: "tab",
                        "aria-selected": "true"
                    },
                    on: {
                        click: function(a) {
                            return t.changType(1)
                        }
                    }
                },
                [e("span", {
                    staticClass: "van-tab__text van-tab__text--ellipsis"
                },
                [t._v("公告")])]), t._v(" "), e("div", {
                    class: 2 == t.type ? "van-tab van-tab--active": "van-tab",
                    attrs: {
                        role: "tab"
                    },
                    on: {
                        click: function(a) {
                            return t.changType(2)
                        }
                    }
                },
                [t._m(0)])])]), t._v(" "), e("div", {
                    staticClass: "van-tabs__content",
                    staticStyle: {
                        width: "90%",
                        margin: "0 auto"
                    }
                },
                [1 == t.type ? e("div", {
                    staticClass: "van-tab__pane",
                    attrs: {
                        role: "tabpanel"
                    }
                },
                [t.homenoticelis.length > 0 ? e("van-list", {
                    attrs: {
                        "finished-text": "没有更多了",
                        finished: !0
                    }
                },
                t._l(t.homenoticelis,
                function(a, i) {
                    return e("van-cell", {
                        key: i
                    },
                    [e("div", {
                        staticClass: "content"
                    },
                    [t._v(t._s(a))])])
                }), 1) : e("van-divider", {
                    style: {
                        color: "#ccc",
                        borderColor: "#ccc",
                        padding: "20px 100px"
                    },
                    attrs: {
                        dashed: ""
                    }
                },
                [t._v("没有更多了~")])], 1) : t._e(), t._v(" "), 2 == t.type ? e("div", {
                    staticClass: "van-tab__pane",
                    attrs: {
                        role: "tabpanel"
                    }
                },
                [t.noticeList.length > 0 ? e("van-list", {
                    attrs: {
                        "finished-text": "没有更多了",
                        offset: "300",
                        finished: t.noticeList.length == t.noticeListInfo.total
                    },
                    on: {
                        load: t.getDatalist
                    },
                    model: {
                        value: t.loading,
                        callback: function(a) {
                            t.loading = a
                        },
                        expression: "loading"
                    }
                },
                t._l(t.noticeList,
                function(a, i) {
                    return e("van-cell", {
                        key: i
                    },
                    [e("h3", {
                        staticClass: "unReadTitle"
                    },
                    [e("span", [t._v(t._s(a.title))])]), t._v(" "), e("div", {
                        staticClass: "content",
                        domProps: {
                            innerHTML: t._s(a.content)
                        }
                    },
                    [t._v(t._s(a))]), t._v(" "), e("div", {
                        staticClass: "content"
                    },
                    [t._v(t._s(a.created_at))])])
                }), 1) : e("van-divider", {
                    style: {
                        color: "#ccc",
                        borderColor: "#ccc",
                        padding: "20px 100px"
                    },
                    attrs: {
                        dashed: ""
                    }
                },
                [t._v("没有更多了~")])], 1) : t._e()])])], 1)
            },
            staticRenderFns: [function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("span", {
                    staticClass: "van-tab__text van-tab__text--ellipsis"
                },
                [a("span", [this._v("站内信")])])
            }]
        };
        var nt = e("VU/8")(it, st, !1,
        function(t) {
            e("iMz1")
        },
        "data-v-f5c04302", null).exports,
        ot = {
            name: "fanshui",
            data: function() {
                return {
                    date: 4,
                    list: [],
                    pageData: {},
                    page: 1,
                    dogameLis: [],
                    api_type: "",
                    loading: !1,
                    name: "全平台",
                    show: !1,
                    jisuan: 0,
                    nojisuan: 0,
                    dateName: ["", "今日", "近7日", "近15日", "近30日"],
                    popup: !1,
                    showXuan: 1
                }
            },
            created: function() {
                this.getdogame(),
                this.getData()
            },
            methods: {
                changDogame: function(t, a) {
                    this.name = t,
                    this.api_type = a,
                    this.popup = !1,
                    this.page = 1,
                    this.getData()
                },
                changtype: function(t, a) {
                    this[t] = a,
                    this.popup = !1,
                    this.page = 1,
                    this.getData()
                },
                showPopup: function(t) {
                    this.popup = !0,
                    this.showXuan = t
                },
                lingqu: function() {
                    var t = this;
                    t.nojisuan <= 0 ? t.$parent.showTost(0, "暂无领取额度！") : (t.$parent.showLoading(), t.$apiFun.post("/api/dofanshui", {}).then(function(a) {
                        console.log(a),
                        t.$parent.getUserInfo(),
                        t.$parent.showTost(1, a.message),
                        t.getfanshui()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    }))
                },
                openOrclose: function() {
                    this.show = !this.show
                },
                changtab: function() {
                    this.page = 1,
                    this.list = [],
                    this.pageData = {},
                    this.getData()
                },
                getdogame: function() {
                    var t = this;
                    t.$apiFun.post("/api/balancelist", {}).then(function(a) {
                        console.log(a),
                        200 != a.code && t.$parent.showTost(a.message),
                        200 == a.code && (t.dogameLis = a.data, t.dogameLis.unshift({
                            name: "全平台",
                            platname: ""
                        }))
                    })
                },
                changeDate: function() {
                    this.page = 1,
                    this.getData()
                },
                getData: function() {
                    var t = this,
                    a = t.page;
                    if (a > t.pageData.last_page) t.loading = !1;
                    else {
                        t.$parent.showLoading();
                        var e = {
                            date: t.date,
                            page: t.page,
                            api_type: t.api_type,
                            type: ""
                        };
                        t.$apiFun.post("/api/getfanshui", e).then(function(e) {
                            if (200 != e.code && t.$parent.showTost(0, e.message), 200 == e.code) {
                                if (t.pageData = e.data.list, t.jisuan = e.data.jisuan, t.nojisuan = e.data.nojisuan, 1 == t.page) t.list = e.data.list.data;
                                else {
                                    var i = JSON.parse(n()(t.list));
                                    e.data.list.data.forEach(function(t) {
                                        i.push(t)
                                    }),
                                    t.list = i
                                }
                                t.page = a + 1
                            }
                            t.loading = !1,
                            t.$parent.hideLoading()
                        }).
                        catch(function(a) {
                            t.$parent.hideLoading(),
                            t.loading = !1
                        })
                    }
                }
            },
            mounted: function() {},
            updated: function() {}
        },
        rt = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticStyle: {
                        width: "100%",
                        "min-height": "100vh",
                        background: "rgb(237, 241, 255)"
                    }
                },
                [e("van-nav-bar", {
                    staticStyle: {
                        position: "fixed",
                        top: "0",
                        left: "0",
                        width: "100%",
                        "background-color": "#ede9e7"
                    },
                    attrs: {
                        title: "返水中心",
                        "left-arrow": ""
                    },
                    on: {
                        "click-left": function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        height: "46px"
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        width: "95%",
                        "min-width": "250px",
                        margin: "0 auto",
                        background: "#fff",
                        "border-radius": "10px",
                        "box-sizing": "border-box",
                        padding: "10px",
                        "min-height": "90vh"
                    }
                },
                [e("div", {
                    staticStyle: {
                        "padding-bottom": "10px",
                        display: "flex",
                        "align-items": "center",
                        "justify-content": "space-between"
                    }
                },
                [e("span", {
                    staticStyle: {
                        "font-size": "0.3rem"
                    }
                },
                [t._v(" 返水记录 ")]), t._v(" "), e("van-button", {
                    staticStyle: {
                        width: "3rem",
                        height: "0.68rem",
                        "min-width": "80px"
                    },
                    attrs: {
                        type: "info"
                    },
                    on: {
                        click: t.lingqu
                    }
                },
                [e("span", {
                    staticStyle: {
                        color: "#fff",
                        "font-size": "0.3rem"
                    }
                },
                [t._v("点击领取")])])], 1), t._v(" "), e("div", {
                    staticStyle: {
                        display: "flex",
                        "box-sizing": "border-box",
                        padding: "0 12px",
                        "font-size": "0.3rem",
                        "justify-content": "space-between",
                        height: "1.1rem",
                        "align-items": "center",
                        "border-bottom": "1px solid #f1f1f1"
                    }
                },
                [e("div", {
                    staticStyle: {
                        "font-size": "0.3rem",
                        "text-align": "center",
                        width: "49%"
                    }
                },
                [e("div", {
                    staticStyle: {
                        "font-size": "0.3rem"
                    }
                },
                [t._v("累计领取")]), t._v(" "), e("div", {
                    staticStyle: {
                        "font-size": "0.3rem",
                        color: "#cf866b",
                        "font-weight": "700"
                    }
                },
                [t._v("￥" + t._s(t.jisuan))])]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "76%",
                        "border-left": "1px solid #f1f1f1"
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        "font-size": "0.3rem",
                        "text-align": "center",
                        width: "49%"
                    }
                },
                [e("div", {
                    staticStyle: {
                        "font-size": "0.3rem"
                    }
                },
                [t._v("待领取")]), t._v(" "), e("div", {
                    staticStyle: {
                        "font-size": "0.3rem",
                        color: "#cf866b",
                        "font-weight": "700"
                    }
                },
                [t._v("￥" + t._s(t.nojisuan))])])]), t._v(" "), e("div", {
                    staticClass: "saibox"
                },
                [e("div", {
                    staticClass: "sai",
                    on: {
                        click: function(a) {
                            return t.showPopup(1)
                        }
                    }
                },
                [t._v(t._s(t.name))]), t._v(" "), e("div", {
                    staticClass: "sai",
                    on: {
                        click: function(a) {
                            return t.showPopup(2)
                        }
                    }
                },
                [t._v(t._s(t.dateName[t.date]))])]), t._v(" "), t.list.length > 0 ? e("van-list", {
                    staticStyle: {
                        "margin-top": "10px",
                        "padding-bottom": "120px"
                    },
                    attrs: {
                        "finished-text": "没有更多了",
                        offset: "300",
                        finished: t.list.length == t.pageData.total
                    },
                    on: {
                        load: t.getData
                    },
                    model: {
                        value: t.loading,
                        callback: function(a) {
                            t.loading = a
                        },
                        expression: "loading"
                    }
                },
                t._l(t.list,
                function(a, i) {
                    return e("van-cell", {
                        key: i
                    },
                    [e("div", {
                        staticStyle: {
                            color: "#888 !important"
                        }
                    },
                    [e("div", {
                        staticStyle: {
                            display: "flex",
                            "justify-content": "space-between",
                            "font-size": "0.3rem"
                        }
                    },
                    [t._v("\n            " + t._s(a.gamename) + " "), e("span", {
                        staticStyle: {
                            "font-size": "0.3rem"
                        }
                    },
                    [t._v("返水金额 :" + t._s(a.money))])]), t._v(" "), e("div", {
                        staticStyle: {
                            "font-size": "0.3rem"
                        }
                    },
                    [t._v("返水时间:" + t._s(a.created_at))]), t._v(" "), e("div", {
                        staticStyle: {
                            "font-size": "0.3rem"
                        }
                    },
                    [t._v("领取时间：" + t._s(0 == a.state ? "暂未领取": a.updated_at))])])])
                }), 1) : e("div", {
                    staticStyle: {
                        "margin-top": "60px",
                        "text-align": "center"
                    }
                },
                [e("img", {
                    staticStyle: {
                        width: "35%"
                    },
                    attrs: {
                        src: "/static/image/mescroll-empty.png",
                        alt: ""
                    }
                }), t._v(" "), e("van-divider", {
                    style: {
                        color: "#ccc",
                        borderColor: "#ccc",
                        padding: "20px "
                    },
                    attrs: {
                        dashed: ""
                    }
                },
                [t._v("空空如也")])], 1)], 1), t._v(" "), e("van-popup", {
                    style: {
                        height: "calc(100% - 3.9rem - 46px)"
                    },
                    attrs: {
                        position: "bottom"
                    },
                    model: {
                        value: t.popup,
                        callback: function(a) {
                            t.popup = a
                        },
                        expression: "popup"
                    }
                },
                [1 == t.showXuan ? e("div", {
                    staticClass: "lisg"
                },
                t._l(t.dogameLis,
                function(a, i) {
                    return e("div", {
                        key: i,
                        staticClass: "bs",
                        on: {
                            click: function(e) {
                                return t.changDogame(a.name, a.platname)
                            }
                        }
                    },
                    [e("div", {
                        class: t.api_type == a.platname ? "lisga act": "lisga"
                    },
                    [t._v(t._s(a.name))])])
                }), 0) : t._e(), t._v(" "), 2 == t.showXuan ? e("div", {
                    staticClass: "lisg"
                },
                [e("div", {
                    staticClass: "bs",
                    on: {
                        click: function(a) {
                            return t.changtype("date", 1)
                        }
                    }
                },
                [e("div", {
                    class: 1 == t.date ? "lisga act": "lisga"
                },
                [t._v("今日")])]), t._v(" "), e("div", {
                    staticClass: "bs",
                    on: {
                        click: function(a) {
                            return t.changtype("date", 2)
                        }
                    }
                },
                [e("div", {
                    class: 2 == t.date ? "lisga act": "lisga"
                },
                [t._v("近7日")])]), t._v(" "), e("div", {
                    staticClass: "bs",
                    on: {
                        click: function(a) {
                            return t.changtype("date", 3)
                        }
                    }
                },
                [e("div", {
                    class: 3 == t.date ? "lisga act": "lisga"
                },
                [t._v("近15日")])]), t._v(" "), e("div", {
                    staticClass: "bs",
                    on: {
                        click: function(a) {
                            return t.changtype("date", 4)
                        }
                    }
                },
                [e("div", {
                    class: 4 == t.date ? "lisga act": "lisga"
                },
                [t._v("近30日")])])]) : t._e()])], 1)
            },
            staticRenderFns: []
        };
        var ct = e("VU/8")(ot, rt, !1,
        function(t) {
            e("Hh0F")
        },
        "data-v-a50941d2", null).exports,
        lt = e("bOdI"),
        dt = e.n(lt),
        vt = {
            name: "userInfo",
            data: function() {
                return {
                    mobile: null,
                    email: null,
                    birthday: null,
                    showPicker: !1,
                    minDate: new Date(1980, 0, 1)
                }
            },
            created: function() {
                var t = JSON.parse(localStorage.getItem("userInfo"));
                this.mobile = t.mobile,
                this.email = t.email,
                this.birthday = t.birthday
            },
            methods: dt()({
                onchangemd: function(t) {
                    var a = this;
                    console.log(t.target.files);
                    var e = new FormData;
                    P()(t.target.files).map(function(t) {
                        console.log(t),
                        e.append("file", t)
                    }),
                    a.$parent.showLoading(),
                    a.$apiFun.post("/api/uploadimg", e).then(function(t) {
                        a.$parent.hideLoading(),
                        a.$parent.getUserInfoShowLoding()
                    })
                },
                timeFormat: function(t) {
                    return (t = new Date(t.getTime() + 288e5)).toJSON().split("T").join(" ").substr(0, 10)
                },
                changShow: function() {
                    this.showPicker = !this.showPicker,
                    console.log(123)
                },
                onConfirm: function(t) {
                    this.birthday = this.timeFormat(t),
                    this.showPicker = !1
                },
                isOk: function() {
                    var t = this,
                    a = {
                        email: t.email,
                        mobile: t.mobile,
                        birthday: t.birthday
                    };
                    console.log(t.birthday);
                    /^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/.test(t.mobile) ? /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/.test(t.email) ? /^(\d{4})-(\d{2})-(\d{2})$/.test(t.birthday) ? (t.$parent.showLoading(), t.$apiFun.post("/api/updateuserinfo", a).then(function(e) {
                        if (console.log(e), 200 != e.code && t.$parent.showTost(0, e.message), 200 == e.code) {
                            var i = JSON.parse(localStorage.getItem("userInfo"));
                            i.mobile = a.mobile,
                            i.email = a.email,
                            i.birthday = a.birthday,
                            localStorage.setItem("userInfo", n()(i)),
                            t.$parent.getUserInfo(),
                            t.$parent.showTost(1, "操作成功")
                        }
                        t.$parent.hideLoading()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    })) : t.$parent.showTost(0, "请输入正确的日期格式：YYYY-MM-DD") : t.$parent.showTost(0, "请输入正确邮箱号") : t.$parent.showTost(0, "请输入正确手机号")
                }
            },
            "onchangemd",
            function(t) {
                var a = this;
                console.log(t.target.files);
                var e = new FormData;
                P()(t.target.files).map(function(t) {
                    console.log(t),
                    e.append("file", t)
                }),
                a.$parent.showLoading(),
                a.$apiFun.post("/api/uploadimg", e).then(function(t) {
                    a.$parent.getUserInfoShowLoding()
                })
            }),
            mounted: function() {},
            updated: function() {}
        },
        pt = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticStyle: {
                        width: "100%",
                        "min-height": "100vh",
                        background: "#f1f1f1"
                    }
                },
                [e("van-nav-bar", {
                    staticStyle: {
                        position: "fixed",
                        top: "0",
                        left: "0",
                        width: "100%",
                        "background-color": "#ede9e7"
                    },
                    attrs: {
                        title: "个人资料",
                        "left-arrow": ""
                    },
                    on: {
                        "click-left": function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        height: "46px"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "usrse"
                },
                [e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("个人头像")]), t._v(" "), e("div", {
                    staticClass: "imgsa"
                },
                [e("img", {
                    attrs: {
                        mode: "aspectFill",
                        src: t.$store.state.userInfo.avatar ? t.$store.state.userInfo.avatar: "/static/image/imageAvatar02@3x.png",
                        alt: ""
                    }
                }), t._v(" "), e("input", {
                    staticClass: "inputsw",
                    attrs: {
                        type: "file",
                        single: "",
                        accept: "image/gif,image/png"
                    },
                    on: {
                        change: t.onchangemd
                    }
                }), t._v(" "), e("img", {
                    staticClass: "bisn",
                    attrs: {
                        mode: "aspectFill",
                        src: "/static/image/avatarEdit.cf65ea838bb7aba043f461f551f740ac.png"
                    }
                })])]), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("用户名")]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                },
                [e("van-cell-group", [e("van-field", {
                    attrs: {
                        placeholder: "请输入用户名",
                        disabled: ""
                    },
                    model: {
                        value: t.$store.state.userInfo.username,
                        callback: function(a) {
                            t.$set(t.$store.state.userInfo, "username", a)
                        },
                        expression: "$store.state.userInfo.username"
                    }
                })], 1)], 1)]), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("真实姓名")]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                },
                [e("van-cell-group", [e("van-field", {
                    attrs: {
                        placeholder: "请输入真实姓名",
                        disabled: ""
                    },
                    model: {
                        value: t.$store.state.userInfo.realname,
                        callback: function(a) {
                            t.$set(t.$store.state.userInfo, "realname", a)
                        },
                        expression: "$store.state.userInfo.realname"
                    }
                })], 1)], 1)]), t._v(" "), e("div", {
                    staticClass: "hgs",
                    on: {
                        click: t.changShow
                    }
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("出生日期")]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                },
                [e("van-cell-group", [e("van-field", {
                    attrs: {
                        placeholder: "请选择出入日期",
                        disabled: ""
                    },
                    model: {
                        value: t.birthday,
                        callback: function(a) {
                            t.birthday = a
                        },
                        expression: "birthday"
                    }
                })], 1)], 1)]), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("手机号码")]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                },
                [e("van-cell-group", [e("van-field", {
                    attrs: {
                        placeholder: "绑定手机号，保障账号安全"
                    },
                    model: {
                        value: t.mobile,
                        callback: function(a) {
                            t.mobile = a
                        },
                        expression: "mobile"
                    }
                })], 1)], 1)]), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("电子邮箱")]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                },
                [e("van-cell-group", [e("van-field", {
                    attrs: {
                        placeholder: "绑定邮箱保护账号安全"
                    },
                    model: {
                        value: t.email,
                        callback: function(a) {
                            t.email = a
                        },
                        expression: "email"
                    }
                })], 1)], 1)]), t._v(" "), e("van-button", {
                    staticStyle: {
                        "margin-top": "20px",
                        width: "100%"
                    },
                    attrs: {
                        type: "info"
                    },
                    on: {
                        click: t.isOk
                    }
                },
                [t._v("确认修改")])], 1), t._v(" "), t.showPicker ? e("van-datetime-picker", {
                    staticStyle: {
                        position: "fixed",
                        width: "100%",
                        bottom: "0px",
                        left: "0",
                        background: "#f1f1f1"
                    },
                    attrs: {
                        type: "date",
                        "min-date": t.minDate
                    },
                    on: {
                        confirm: t.onConfirm,
                        cancel: t.changShow
                    }
                }) : t._e()], 1)
            },
            staticRenderFns: []
        };
        var ut = e("VU/8")(vt, pt, !1,
        function(t) {
            e("xodb")
        },
        "data-v-de1f1940", null).exports,
        ft = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticStyle: {
                        width: "100%",
                        "min-height": "100vh",
                        background: "#f1f1f1"
                    }
                },
                [e("van-nav-bar", {
                    staticStyle: {
                        position: "fixed",
                        top: "0",
                        left: "0",
                        width: "100%",
                        "background-color": "#ede9e7"
                    },
                    attrs: {
                        title: "个人资料",
                        "left-arrow": ""
                    },
                    on: {
                        "click-left": function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        height: "46px"
                    }
                }), t._v(" "), t._m(0), t._v(" "), e("div", {
                    staticClass: "boxst"
                },
                [e("div", {
                    staticClass: "hgs",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/userInfo")
                        }
                    }
                },
                [t._m(1), t._v(" "), t._m(2)]), t._v(" "), e("div", {
                    staticClass: "hgs",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/wallet")
                        }
                    }
                },
                [t._m(3), t._v(" "), t._m(4)]), t._v(" "), e("div", {
                    staticClass: "hgs",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/password?type=1")
                        }
                    }
                },
                [t._m(5), t._v(" "), t._m(6)]), t._v(" "), e("div", {
                    staticClass: "hgs",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/password?type=2")
                        }
                    }
                },
                [t._m(7), t._v(" "), t._m(8)])])], 1)
            },
            staticRenderFns: [function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "tops"
                },
                [a("img", {
                    attrs: {
                        src: "/static/image/safety.d3a323b5ad7cca95958707791f3861b1.png",
                        alt: ""
                    }
                }), this._v(" "), a("div", {
                    staticClass: "tes"
                },
                [this._v("完善账户信息，更安全")])])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "lfs"
                },
                [a("div", {
                    staticClass: "topas"
                },
                [this._v("完善个人资料")]), this._v(" "), a("div", {
                    staticClass: "tisg"
                },
                [this._v("资料更完整，我们的服务更加周到")])])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "rigs"
                },
                [this._v("去完善 "), a("img", {
                    attrs: {
                        src: "/static/image/right.b9a9c7c64558347505384ad01922580c.png",
                        alt: ""
                    }
                })])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "lfs"
                },
                [a("div", {
                    staticClass: "topas"
                },
                [this._v("卡片管理")]), this._v(" "), a("div", {
                    staticClass: "tisg"
                },
                [this._v("如需提现，请绑定银行卡或虚拟币地址")])])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "rigs"
                },
                [a("img", {
                    attrs: {
                        src: "/static/image/right.b9a9c7c64558347505384ad01922580c.png",
                        alt: ""
                    }
                })])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "lfs"
                },
                [a("div", {
                    staticClass: "topas"
                },
                [this._v("登录密码管理")]), this._v(" "), a("div", {
                    staticClass: "tisg"
                },
                [this._v("定期修改登录密码，有利账户安全")])])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "rigs"
                },
                [a("img", {
                    attrs: {
                        src: "/static/image/right.b9a9c7c64558347505384ad01922580c.png",
                        alt: ""
                    }
                })])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "lfs"
                },
                [a("div", {
                    staticClass: "topas"
                },
                [this._v("取款密码管理")]), this._v(" "), a("div", {
                    staticClass: "tisg"
                },
                [this._v("定期修改登录密码，有利账户安全")])])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "rigs"
                },
                [a("img", {
                    attrs: {
                        src: "/static/image/right.b9a9c7c64558347505384ad01922580c.png",
                        alt: ""
                    }
                })])
            }]
        };
        var gt = e("VU/8")({
            name: "userCent",
            data: function() {
                return {}
            },
            created: function() {},
            methods: {},
            mounted: function() {},
            updated: function() {}
        },
        ft, !1,
        function(t) {
            e("oMbg")
        },
        "data-v-044861b8", null).exports,
        ht = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticStyle: {
                        width: "100%",
                        "min-height": "100vh",
                        background: "rgb(237, 241, 255)"
                    }
                },
                [e("van-nav-bar", {
                    staticStyle: {
                        position: "fixed",
                        top: "0",
                        left: "0",
                        width: "100%",
                        "background-color": "#ede9e7"
                    },
                    attrs: {
                        title: "卡片管理",
                        "left-arrow": ""
                    },
                    on: {
                        "click-left": function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        height: "46px"
                    }
                }), t._v(" "), e("van-tabs", {
                    model: {
                        value: t.type,
                        callback: function(a) {
                            t.type = a
                        },
                        expression: "type"
                    }
                },
                [e("van-tab", {
                    attrs: {
                        title: "虚拟币",
                        name: "1"
                    }
                },
                [t._l(t.usdssLis,
                function(a, i) {
                    return e("div", {
                        key: i,
                        staticClass: "lis"
                    },
                    [e("img", {
                        staticClass: "lefs",
                        attrs: {
                            src: "/static/image/1595237922936176.png",
                            alt: ""
                        }
                    }), t._v(" "), e("div", {
                        staticClass: "cest"
                    },
                    [e("div", {
                        staticClass: "type"
                    },
                    [t._v(t._s(a.bank) + "-" + t._s(a.bank_owner))]), t._v(" "), e("div", {
                        staticClass: "num"
                    },
                    [e("span", [t._v("****")]), e("span", [t._v("****")]), e("span", [t._v("****")]), e("span", [t._v(t._s(a.bank_no.substr( - 4)))])])]), t._v(" "), e("img", {
                        staticClass: "rigss",
                        attrs: {
                            src: "/static/style/wdb_icon.png",
                            alt: ""
                        },
                        on: {
                            click: function(e) {
                                return t.delCard(a.id)
                            }
                        }
                    })])
                }), t._v(" "), e("div", {
                    staticClass: "adds"
                },
                [t.usdssLis.length < 5 ? e("van-button", {
                    staticStyle: {
                        width: "100%"
                    },
                    attrs: {
                        plain: ""
                    },
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/addUsdtCard")
                        }
                    }
                },
                [t._v("添加USDT地址")]) : t._e(), t._v(" "), e("div", {
                    staticClass: "btntits"
                },
                [t._v("最多支持添加5个地址")])], 1)], 2), t._v(" "), e("van-tab", {
                    attrs: {
                        title: "银行卡",
                        name: "2"
                    }
                },
                [t._l(t.usercardLis,
                function(a, i) {
                    return e("div", {
                        key: i,
                        staticClass: "lis"
                    },
                    [e("img", {
                        staticClass: "lefs",
                        attrs: {
                            src: a.ico,
                            alt: ""
                        }
                    }), t._v(" "), e("div", {
                        staticClass: "cest"
                    },
                    [e("div", {
                        staticClass: "type"
                    },
                    [t._v(t._s(a.bank))]), t._v(" "), e("div", {
                        staticClass: "type"
                    },
                    [t._v(t._s(a.bank_owner))]), t._v(" "), e("div", {
                        staticClass: "num"
                    },
                    [e("span", [t._v("****")]), e("span", [t._v("****")]), e("span", [t._v("****")]), e("span", [t._v(t._s(a.bank_no.substr( - 4)))])])]), t._v(" "), e("img", {
                        staticClass: "rigss",
                        attrs: {
                            src: "/static/style/wdb_icon.png",
                            alt: ""
                        },
                        on: {
                            click: function(e) {
                                return t.delCard(a.id)
                            }
                        }
                    })])
                }), t._v(" "), e("div", {
                    staticClass: "adds"
                },
                [t.usercardLis.length < 5 ? e("van-button", {
                    staticStyle: {
                        width: "100%"
                    },
                    attrs: {
                        plain: ""
                    },
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/addBankCard")
                        }
                    }
                },
                [t._v("添加银行卡")]) : t._e(), t._v(" "), e("div", {
                    staticClass: "btntits"
                },
                [t._v("最多支持添加5张银行卡")])], 1)], 2)], 1)], 1)
            },
            staticRenderFns: []
        };
        var _t = e("VU/8")({
            name: "wallet",
            data: function() {
                return {
                    usercardLis: [],
                    usdssLis: [],
                    type: 1
                }
            },
            created: function() {
                var t = this.$route.query;
                t.type && (this.type = t.type),
                this.getUsercard(),
                this.getUsdssList()
            },
            methods: {
                delCard: function(t) {
                    var a = this;
                    a.$dialog.confirm({
                        title: "温馨提示",
                        message: "确定要解除绑定该卡片吗？"
                    }).then(function() {
                        a.$parent.showLoading(),
                        a.$apiFun.post("/api/delcard", {
                            id: t
                        }).then(function(t) {
                            200 != t.code && a.$parent.showTost(0, t.message),
                            a.$parent.hideLoading(),
                            200 == t.code && (a.$parent.showTost(1, "解绑成功"), a.getUsercard(), a.getUsdssList())
                        })
                    }).
                    catch(function() {})
                },
                getUsercard: function() {
                    var t = this,
                    a = this;
                    this.$parent.showLoading(),
                    a.$apiFun.post("/api/getcard", {
                        type: 1
                    }).then(function(e) {
                        200 == e.code && (a.usercardLis = e.data),
                        t.$parent.hideLoading()
                    })
                },
                getUsdssList: function() {
                    var t = this,
                    a = this;
                    this.$parent.showLoading(),
                    a.$apiFun.post("/api/getcard", {
                        type: 2
                    }).then(function(e) {
                        200 == e.code && (a.usdssLis = e.data),
                        t.$parent.hideLoading()
                    })
                }
            },
            mounted: function() {},
            updated: function() {}
        },
        ht, !1,
        function(t) {
            e("L15H")
        },
        "data-v-58ca681e", null).exports,
        mt = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticStyle: {
                        width: "100%",
                        "min-height": "100vh",
                        background: "rgb(237, 241, 255)"
                    }
                },
                [e("van-nav-bar", {
                    staticStyle: {
                        position: "fixed",
                        top: "0",
                        left: "0",
                        width: "100%",
                        "background-color": "#ede9e7"
                    },
                    attrs: {
                        title: "新增USDT地址",
                        "left-arrow": ""
                    },
                    on: {
                        "click-left": function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        height: "46px"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "tipsh"
                },
                [e("div", {
                    staticClass: "tops"
                },
                [t._v("USDT价格稳定 流通性高 不受监管 "), e("span", {
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/usdtmore")
                        }
                    }
                },
                [t._v("了解更多 >")])]), t._v(" "), t._m(0)]), t._v(" "), e("div", {
                    staticClass: "usrse"
                },
                [e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams sc"
                },
                [t._v("\n        钱包协议\n        "), e("div", {
                    class: "TRC20" == t.usdtInfo.bank_owner ? " ssa acti": "ssa",
                    on: {
                        click: function(a) {
                            return t.changXie("TRC20")
                        }
                    }
                },
                [t._v("TRC20")]), t._v(" "), e("div", {
                    class: "ERC20" == t.usdtInfo.bank_owner ? " ssa acti": "ssa",
                    staticStyle: {
                        "margin-left": "0.5rem"
                    },
                    on: {
                        click: function(a) {
                            return t.changXie("ERC20")
                        }
                    }
                },
                [t._v("ERC20")])]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("USDT地址")]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                },
                [e("div", {
                    staticClass: "van-cell-group van-hairline--top-bottom",
                    attrs: {
                        "data-v-a12ec382": ""
                    }
                },
                [e("div", {
                    staticClass: "van-cell van-field",
                    attrs: {
                        "data-v-a12ec382": ""
                    }
                },
                [e("div", {
                    staticClass: "van-cell__value van-cell__value--alone van-field__value"
                },
                [e("div", {
                    staticClass: "van-field__body"
                },
                [e("input", {
                    directives: [{
                        name: "model",
                        rawName: "v-model",
                        value: t.usdtInfo.bank_no,
                        expression: "usdtInfo.bank_no"
                    }],
                    staticClass: "van-field__control",
                    attrs: {
                        type: "text",
                        "auto-complete": "off",
                        oninput: "value=value.replace(/[\\W]/g,'')",
                        placeholder: "请输入USDT地址"
                    },
                    domProps: {
                        value: t.usdtInfo.bank_no
                    },
                    on: {
                        input: function(a) {
                            a.target.composing || t.$set(t.usdtInfo, "bank_no", a.target.value)
                        }
                    }
                })])])])])])]), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("支付密码")]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                },
                [e("van-cell-group", [e("van-field", {
                    attrs: {
                        type: "password",
                        autocomplete: "new-password",
                        placeholder: "请输入支付密码"
                    },
                    model: {
                        value: t.usdtInfo.pay_pass,
                        callback: function(a) {
                            t.$set(t.usdtInfo, "pay_pass", a)
                        },
                        expression: "usdtInfo.pay_pass"
                    }
                })], 1)], 1)]), t._v(" "), e("van-button", {
                    staticStyle: {
                        "margin-top": "20px",
                        width: "100%"
                    },
                    attrs: {
                        type: "info"
                    },
                    on: {
                        click: t.bindUsdss
                    }
                },
                [t._v("确认添加")])], 1)], 1)
            },
            staticRenderFns: [function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "tsg"
                },
                [a("div", {
                    staticClass: "tsgs"
                },
                [this._v("绑定协议地址")]), this._v(" "), a("div", {
                    staticClass: "tsgs"
                },
                [this._v("交易所划转")]), this._v(" "), a("div", {
                    staticClass: "tsgs"
                },
                [this._v("完成取款")])])
            }]
        };
        var bt = e("VU/8")({
            name: "addUsdtCard",
            data: function() {
                return {
                    usdtInfo: {
                        bank_owner: "TRC20"
                    }
                }
            },
            created: function() {},
            methods: {
                changXie: function(t) {
                    this.usdtInfo.bank_owner = t
                },
                bindUsdss: function() {
                    var t = this,
                    a = t.usdtInfo;
                    a.bank = "USDT",
                    null != a.bank_no && "" != a.bank_no ? a.bank_owner && null != a.bank_owner ? a.pay_pass ? (t.$parent.showLoading(), t.$apiFun.post("/api/bindcard", a).then(function(a) {
                        200 != a.code && t.$parent.showTost(0, a.message),
                        200 == a.code && (t.$parent.showTost(1, a.message), t.$router.back()),
                        t.$parent.hideLoading()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    })) : t.$parent.showTost(0, "请输人支付密码") : t.$parent.showTost(0, "请选择钱包协议") : t.$parent.showTost(0, "请输入USDT地址")
                }
            },
            mounted: function() {},
            updated: function() {}
        },
        mt, !1,
        function(t) {
            e("9jpQ")
        },
        "data-v-5c7e1f16", null).exports,
        yt = {
            name: "addBankCard",
            data: function() {
                return {
                    cardInfo: {},
                    banklist: [],
                    show: !1
                }
            },
            created: function() {
                this.getBanklist()
            },
            methods: {
                changShow: function() {
                    this.show = !this.show
                },
                onConfirm: function(t, a) {
                    this.cardInfo.bank = t.bank_name,
                    console.log(this.cardInfo.bank),
                    this.show = !1
                },
                onChange: function(t, a, e) {},
                onCancel: function() {
                    this.show = !1
                },
                getBanklist: function() {
                    var t = this;
                    t.$parent.showLoading(),
                    t.$apiFun.post("/api/banklist", {}).then(function(a) {
                        200 != a.code && t.showTost(0, a.message),
                        200 == a.code && (t.banklist = a.data),
                        t.$parent.hideLoading()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    })
                },
                bindCard: function() {
                    var t = this;
                    t.cardInfo.bank_owner ? t.cardInfo.bank ? t.cardInfo.bank_address ? t.cardInfo.bank_no ? t.cardInfo.pay_pass ? t.cardInfo.bank_no.length < 8 ? t.$parent.showTost(0, "请输人正确的卡号长度") : t.cardInfo.pay_pass.length < 6 || t.cardInfo.pay_pass.length > 18 ? t.$parent.showTost(0, "请输人支付密码长度") : (t.$parent.showLoading(), t.$apiFun.post("/api/bindcard", t.cardInfo).then(function(a) {
                        200 != a.code && t.$parent.showTost(0, a.message),
                        200 == a.code && (t.$parent.showTost(1, "绑定成功"), t.$router.back()),
                        t.$parent.hideLoading()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    })) : t.$parent.showTost(0, "请输人支付密码") : t.$parent.showTost(0, "请输人银行卡号") : t.$parent.showTost(0, "请输入开户行地址") : t.$parent.showTost(0, "请输入银行") : t.$parent.showTost(0, "请输入姓名")
                }
            },
            mounted: function() {},
            updated: function() {}
        },
        wt = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticStyle: {
                        width: "100%",
                        "min-height": "100vh",
                        background: "rgb(237, 241, 255)"
                    }
                },
                [e("van-nav-bar", {
                    staticStyle: {
                        position: "fixed",
                        top: "0",
                        left: "0",
                        width: "100%",
                        "background-color": "#ede9e7"
                    },
                    attrs: {
                        title: "新增银行卡",
                        "left-arrow": ""
                    },
                    on: {
                        "click-left": function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        height: "46px"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "usrse"
                },
                [e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("持卡人姓名")]), t._v(" "), e("div", [e("div", {
                    staticClass: "van-cell-group van-hairline--top-bottom",
                    attrs: {
                        "data-v-a12ec382": ""
                    }
                },
                [e("div", {
                    staticClass: "van-cell van-field",
                    attrs: {
                        "data-v-a12ec382": ""
                    }
                },
                [e("div", {
                    staticClass: "van-cell__value van-cell__value--alone van-field__value"
                },
                [e("div", {
                    staticClass: "van-field__body"
                },
                [e("input", {
                    directives: [{
                        name: "model",
                        rawName: "v-model",
                        value: t.cardInfo.bank_owner,
                        expression: "cardInfo.bank_owner"
                    }],
                    staticClass: "van-field__control",
                    attrs: {
                        type: "text",
                        "auto-complete": "off",
                        placeholder: "请输入持卡人姓名"
                    },
                    domProps: {
                        value: t.cardInfo.bank_owner
                    },
                    on: {
                        input: function(a) {
                            a.target.composing || t.$set(t.cardInfo, "bank_owner", a.target.value)
                        }
                    }
                })])])])])])])]), t._v(" "), e("div", {
                    staticStyle: {
                        "font-size": "0.24rem",
                        color: "#98a5b3",
                        "text-align": "center",
                        "box-sizing": "border-box",
                        padding: "6px"
                    }
                },
                [t._v("为了您的资金能够迅速到账，请确保填写的姓名与银行卡的开户姓名一致")]), t._v(" "), e("div", {
                    staticClass: "usrse"
                },
                [e("div", {
                    staticClass: "hgs",
                    on: {
                        click: t.changShow
                    }
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("银行类型")]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                },
                [e("div", {
                    staticClass: "van-cell-group van-hairline--top-bottom",
                    attrs: {
                        "data-v-a12ec382": ""
                    }
                },
                [e("div", {
                    staticClass: "van-cell van-field",
                    attrs: {
                        "data-v-a12ec382": ""
                    }
                },
                [e("div", {
                    staticClass: "van-cell__value van-cell__value--alone van-field__value"
                },
                [e("div", {
                    staticClass: "van-field__body"
                },
                [e("input", {
                    directives: [{
                        name: "model",
                        rawName: "v-model",
                        value: t.cardInfo.bank,
                        expression: "cardInfo.bank"
                    }],
                    staticClass: "van-field__control",
                    attrs: {
                        type: "text",
                        "auto-complete": "off",
                        disabled: "",
                        placeholder: "请选择银行类型"
                    },
                    domProps: {
                        value: t.cardInfo.bank
                    },
                    on: {
                        input: function(a) {
                            a.target.composing || t.$set(t.cardInfo, "bank", a.target.value)
                        }
                    }
                })])])])])])]), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("银行卡号")]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                },
                [e("div", {
                    staticClass: "van-cell-group van-hairline--top-bottom",
                    attrs: {
                        "data-v-a12ec382": ""
                    }
                },
                [e("div", {
                    staticClass: "van-cell van-field",
                    attrs: {
                        "data-v-a12ec382": ""
                    }
                },
                [e("div", {
                    staticClass: "van-cell__value van-cell__value--alone van-field__value"
                },
                [e("div", {
                    staticClass: "van-field__body"
                },
                [e("input", {
                    directives: [{
                        name: "model",
                        rawName: "v-model",
                        value: t.cardInfo.bank_no,
                        expression: "cardInfo.bank_no"
                    }],
                    staticClass: "van-field__control",
                    attrs: {
                        type: "text",
                        "auto-complete": "off",
                        oninput: "value=value.replace(/[^0-9]/g,'')",
                        placeholder: "请输入银行卡号"
                    },
                    domProps: {
                        value: t.cardInfo.bank_no
                    },
                    on: {
                        input: function(a) {
                            a.target.composing || t.$set(t.cardInfo, "bank_no", a.target.value)
                        }
                    }
                })])])])])])]), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("开户行")]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                },
                [e("div", {
                    staticClass: "van-cell-group van-hairline--top-bottom",
                    attrs: {
                        "data-v-a12ec382": ""
                    }
                },
                [e("div", {
                    staticClass: "van-cell van-field",
                    attrs: {
                        "data-v-a12ec382": ""
                    }
                },
                [e("div", {
                    staticClass: "van-cell__value van-cell__value--alone van-field__value"
                },
                [e("div", {
                    staticClass: "van-field__body"
                },
                [e("input", {
                    directives: [{
                        name: "model",
                        rawName: "v-model",
                        value: t.cardInfo.bank_address,
                        expression: "cardInfo.bank_address"
                    }],
                    staticClass: "van-field__control",
                    attrs: {
                        type: "text",
                        "auto-complete": "off",
                        placeholder: "请输入开户行"
                    },
                    domProps: {
                        value: t.cardInfo.bank_address
                    },
                    on: {
                        input: function(a) {
                            a.target.composing || t.$set(t.cardInfo, "bank_address", a.target.value)
                        }
                    }
                })])])])])])]), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("支付密码")]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                },
                [e("van-cell-group", [e("van-field", {
                    attrs: {
                        type: "password",
                        autocomplete: "new-password",
                        placeholder: "请输入支付密码"
                    },
                    model: {
                        value: t.cardInfo.pay_pass,
                        callback: function(a) {
                            t.$set(t.cardInfo, "pay_pass", a)
                        },
                        expression: "cardInfo.pay_pass"
                    }
                })], 1)], 1)]), t._v(" "), e("van-button", {
                    staticStyle: {
                        "margin-top": "20px",
                        width: "100%"
                    },
                    attrs: {
                        type: "info"
                    },
                    on: {
                        click: t.bindCard
                    }
                },
                [t._v("确认添加")]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "60px"
                    }
                })], 1), t._v(" "), t.show ? e("div", {
                    staticStyle: {
                        position: "fixed",
                        width: "100%",
                        height: "100%",
                        top: "0",
                        "z-index": "999",
                        background: "rgba(0, 0, 0, 0.39)"
                    }
                },
                [e("van-picker", {
                    staticStyle: {
                        position: "absolute",
                        bottom: "0",
                        left: "0",
                        width: "100%"
                    },
                    attrs: {
                        title: "银行类型",
                        "show-toolbar": "",
                        columns: t.banklist,
                        "value-key": "bank_name"
                    },
                    on: {
                        confirm: t.onConfirm,
                        cancel: t.onCancel,
                        change: t.onChange
                    }
                })], 1) : t._e()], 1)
            },
            staticRenderFns: []
        };
        var Ct = e("VU/8")(yt, wt, !1,
        function(t) {
            e("1nti")
        },
        "data-v-1fa57517", null).exports,
        kt = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticStyle: {
                        width: "100%",
                        "min-height": "100vh",
                        background: "rgb(237, 241, 255)"
                    }
                },
                [e("van-nav-bar", {
                    staticStyle: {
                        position: "fixed",
                        top: "0",
                        left: "0",
                        width: "100%",
                        "background-color": "#ede9e7"
                    },
                    attrs: {
                        title: "协议的区别",
                        "left-arrow": ""
                    },
                    on: {
                        "click-left": function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        height: "46px"
                    }
                }), t._v(" "), t._m(0)], 1)
            },
            staticRenderFns: [function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticClass: "virtualProto__virtualCurrency__b7CGB undefined",
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("div", {
                    staticClass: "virtualProto__block__3o4T3",
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("div", {
                    staticClass: "virtualProto__top_img__2l2NV",
                    staticStyle: {
                        "background-image": "url('/static/image/title-bg6.ac4a470f9139139d8e0364b02421375b.png')",
                        width: "206px"
                    },
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("\n        协议介绍\n      ")]), t._v(" "), e("div", {
                    staticClass: "virtualProto__firstPart__1A0Z-",
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("span", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("TRC20：基于波场网络协议")]), t._v(" "), e("p", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("TRC20的提币手续费最低，这意味着用户可以享受低手续费的交易所提币服务。同时，波场网络的TPS能够达到上千级别，可以实现交易秒级确认。")])]), t._v(" "), e("div", {
                    staticClass: "virtualProto__firstPart__1A0Z-",
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("span", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("ERC20：基于以太坊网络协议")]), t._v(" "), e("p", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("以太坊发行自己的原生代币及其他代币。但成千上万种代币的规则都不一样，这对后期市场发展非常不利。所以代币发行者做了一个智能合约标准，也就是ERC20。")])])]), t._v(" "), e("div", {
                    staticClass: "virtualProto__block__3o4T3",
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("div", {
                    staticClass: "virtualProto__top_img__2l2NV",
                    staticStyle: {
                        "background-image": "url('/static/image/title-bg6.ac4a470f9139139d8e0364b02421375b.png')",
                        width: "206px"
                    },
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("\n        协议的区别？\n      ")]), t._v(" "), e("table", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("thead", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("tr", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("th", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("区别点")]), t._v(" "), e("th", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("TRC20协议")]), t._v(" "), e("th", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("ERC20协议")])])]), t._v(" "), e("tbody", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("tr", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("td", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("地址样式")]), t._v(" "), e("td", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("TRC20-USDT地址以T开头")]), t._v(" "), e("td", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("ERC20-USDT地址以0x开头")])]), t._v(" "), e("tr", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("td", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("使用网络")]), t._v(" "), e("td", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("波场网络")]), t._v(" "), e("td", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("以太坊网络")])]), t._v(" "), e("tr", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("td", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("网络状态")]), t._v(" "), e("td", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("基本不堵")]), t._v(" "), e("td", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("经常拥堵")])]), t._v(" "), e("tr", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("td", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("转账速度")]), t._v(" "), e("td", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("div", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("极快")]), t._v(" "), e("div", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("(几秒到几分钟)")])]), t._v(" "), e("td", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("div", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("普通")]), t._v(" "), e("div", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("(几分钟到数十分钟)")])])]), t._v(" "), e("tr", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("td", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("手续费用")]), t._v(" "), e("td", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("低")]), t._v(" "), e("td", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("普通")])]), t._v(" "), e("tr", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("td", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("安全系数")]), t._v(" "), e("td", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("普通")]), t._v(" "), e("td", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("高")])]), t._v(" "), e("tr", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("td", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("使用建议")]), t._v(" "), e("td", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("div", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("小额高频")]), t._v(" "), e("div", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("交易推荐")])]), t._v(" "), e("td", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("div", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("中等额度")]), t._v(" "), e("div", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("常规交易推荐")])])])])])]), t._v(" "), e("div", {
                    staticClass: "virtualProto__block__3o4T3",
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("div", {
                    staticClass: "virtualProto__top_img__2l2NV",
                    staticStyle: {
                        "background-image": "url('/static/image/title-bg6.ac4a470f9139139d8e0364b02421375b.png')",
                        width: "206px"
                    },
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("\n        到底选哪种协议更好？\n      ")]), t._v(" "), e("div", {
                    staticClass: "virtualProto__container__3gv6Q",
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("img", {
                    attrs: {
                        "data-v-9c86c1e4": "",
                        src: "/static/image/pic-xiaoe@2x.dad75f2e30f8e82488d587df87d8aef3.png",
                        width: "72px"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "virtualProto__rightContent__3OhXd",
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("span", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("小额交易推荐")]), t._v(" "), e("div", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("低手续费，秒级到账。")])])]), t._v(" "), e("div", {
                    staticClass: "virtualProto__container__3gv6Q",
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("img", {
                    attrs: {
                        "data-v-9c86c1e4": "",
                        src: "/static/image/pic-zhonge@2x.e0bb8a0ad2b83c10733aa1d33dba786c.png",
                        width: "72px"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "virtualProto__rightContent__3OhXd",
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [e("span", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("中等额度推荐")]), t._v(" "), e("div", {
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("手续费和速度都介于中间值。")])])]), t._v(" "), e("p", {
                    staticClass: "virtualProto__bot__1w1K_",
                    attrs: {
                        "data-v-9c86c1e4": ""
                    }
                },
                [t._v("*两种协议对应的USDT地址不互通，进行转账、充值等操作时，应仔细核对正确地址！")])])])
            }]
        };
        var xt = e("VU/8")({
            name: "usdtmore",
            data: function() {
                return {}
            },
            created: function() {},
            methods: {},
            mounted: function() {},
            updated: function() {}
        },
        kt, !1,
        function(t) {
            e("wizW")
        },
        "data-v-38c97656", null).exports,
        $t = {
            name: "password",
            data: function() {
                return {
                    passwordInfo: {},
                    type: 1,
                    psw1: !0,
                    psw2: !0,
                    psw3: !0
                }
            },
            created: function() {
                var t = this.$route.query;
                t.type && (this.type = 1 * t.type)
            },
            methods: {
                changPsw: function(t) {
                    this[t] = !this[t]
                },
                changtab: function() {
                    this.passwordInfo = {},
                    this.info = {}
                },
                editPassword: function(t) {
                    var a = this;
                    if (a.passwordInfo.password) if (a.passwordInfo.paypassword) if (a.passwordInfo.password.length < 6) a.$parent.showTost(0, "请输入正确的旧密码长度");
                    else if (a.passwordInfo.paypassword.length < 6) a.$parent.showTost(0, "请输入正确的新密码长度");
                    else if (a.passwordInfo.newpasword) if (a.passwordInfo.newpasword == a.passwordInfo.paypassword) {
                        if (a.passwordInfo.password == a.passwordInfo.paypassword) return a.$parent.showTost(0, "新旧密码不能一致！"),
                        void(a.passwordInfo = {});
                        var e = 1 == t ? "/api/editPassword": "/api/editPayPassword";
                        a.$parent.showLoading(),
                        a.$apiFun.post(e, {
                            paypassword: a.passwordInfo.paypassword,
                            password: a.passwordInfo.password
                        }).then(function(e) {
                            console.log(e),
                            200 != e.code && a.$parent.showTost(0, e.message),
                            a.$parent.hideLoading(),
                            200 == e.code && (a.$parent.showTost(1, "密码修改成功！"), a.passwordInfo = {},
                            1 == t && (a.$parent.closeDaoTime(), localStorage.clear(), sessionStorage.clear(), a.$store.commit("changUserInfo"), a.$store.commit("changToken"), a.$router.push({
                                path: "/login"
                            })))
                        })
                    } else a.$parent.showTost(0, "两次密码不一致！");
                    else a.$parent.showTost(0, "请输入确认密码");
                    else a.$parent.showTost(0, "请输入新密码");
                    else a.$parent.showTost(0, "请输入旧密码")
                }
            },
            mounted: function() {},
            updated: function() {}
        },
        St = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticStyle: {
                        width: "100%",
                        "min-height": "100vh",
                        background: "rgb(237, 241, 255)"
                    }
                },
                [e("van-nav-bar", {
                    staticStyle: {
                        position: "fixed",
                        top: "0",
                        left: "0",
                        width: "100%",
                        "background-color": "#ede9e7"
                    },
                    attrs: {
                        title: 1 == t.type ? "修改登录密码": "设置提现密码",
                        "left-arrow": ""
                    },
                    on: {
                        "click-left": function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        height: "46px"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "usrse"
                },
                [e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("原密码")]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                },
                [e("van-cell-group", [e("van-field", {
                    attrs: {
                        type: "password",
                        placeholder: "请输入当前密码"
                    },
                    model: {
                        value: t.passwordInfo.password,
                        callback: function(a) {
                            t.$set(t.passwordInfo, "password", a)
                        },
                        expression: "passwordInfo.password"
                    }
                })], 1)], 1)]), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("新密码")]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                },
                [e("van-cell-group", [e("van-field", {
                    attrs: {
                        type: "password",
                        placeholder: "请输入新密码"
                    },
                    model: {
                        value: t.passwordInfo.paypassword,
                        callback: function(a) {
                            t.$set(t.passwordInfo, "paypassword", a)
                        },
                        expression: "passwordInfo.paypassword"
                    }
                })], 1)], 1)]), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("确认新密码")]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                },
                [e("van-cell-group", [e("van-field", {
                    attrs: {
                        type: "password",
                        placeholder: "请再次输入密码"
                    },
                    model: {
                        value: t.passwordInfo.newpasword,
                        callback: function(a) {
                            t.$set(t.passwordInfo, "newpasword", a)
                        },
                        expression: "passwordInfo.newpasword"
                    }
                })], 1)], 1)]), t._v(" "), e("van-button", {
                    staticStyle: {
                        "margin-top": "20px",
                        width: "100%"
                    },
                    attrs: {
                        type: "info"
                    },
                    on: {
                        click: function(a) {
                            return t.editPassword(t.type)
                        }
                    }
                },
                [t._v("确认修改")]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "60px"
                    }
                })], 1)], 1)
            },
            staticRenderFns: []
        };
        var It = e("VU/8")($t, St, !1,
        function(t) {
            e("f0RK")
        },
        "data-v-1d06223e", null).exports,
        Lt = {
            name: "welfare",
            data: function() {
                return {
                    list: [],
                    pageData: {},
                    userredpacket: {},
                    page: 1,
                    loading: !1
                }
            },
            created: function() {
                this.getuserredpacket(),
                this.getData()
            },
            methods: {
                getData: function() {
                    var t = this,
                    a = t.page;
                    if (a > t.pageData.last_page) t.loading = !1;
                    else {
                        t.$parent.showLoading();
                        var e = {
                            page: t.page
                        };
                        t.$apiFun.post("/api/redpacket", e).then(function(e) {
                            if (200 != e.code && t.$parent.showTost(0, e.message), 200 == e.code) {
                                if (t.pageData = e.data, 1 == t.page) t.list = e.data.data;
                                else {
                                    var i = JSON.parse(n()(t.list));
                                    e.data.data.forEach(function(t) {
                                        i.push(t)
                                    }),
                                    t.list = i
                                }
                                t.page = a + 1
                            }
                            t.loading = !1,
                            t.$parent.hideLoading()
                        }).
                        catch(function(a) {
                            t.$parent.hideLoading(),
                            t.loading = !1
                        })
                    }
                },
                getuserredpacket: function() {
                    var t = this;
                    t.$parent.showLoading();
                    var a = {
                        page: t.page
                    };
                    t.$apiFun.get("/api/userredpacket", a).then(function(a) {
                        console.log(a),
                        200 != a.code && t.$parent.showTost(0, a.message),
                        200 == a.code && (t.userredpacket = a.data),
                        t.$parent.hideLoading()
                    })
                }
            },
            mounted: function() {},
            updated: function() {}
        },
        At = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticStyle: {
                        width: "100%",
                        "min-height": "100vh",
                        background: "rgb(237, 241, 255)"
                    }
                },
                [e("van-nav-bar", {
                    staticStyle: {
                        position: "fixed",
                        top: "0",
                        left: "0",
                        width: "100%",
                        "background-color": "#ede9e7"
                    },
                    attrs: {
                        title: "福利中心",
                        "left-arrow": ""
                    },
                    on: {
                        "click-left": function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        height: "46px"
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        width: "95%",
                        "min-width": "250px",
                        margin: "0 auto",
                        background: "#fff",
                        "border-radius": "10px",
                        "box-sizing": "border-box",
                        padding: "10px",
                        "min-height": "90vh"
                    }
                },
                [e("div", {
                    staticStyle: {
                        "padding-bottom": "10px",
                        display: "flex",
                        "align-items": "center",
                        "justify-content": "space-between"
                    }
                },
                [e("span", {
                    staticStyle: {
                        "font-size": "0.3rem"
                    }
                },
                [t._v(" 红包记录 ")]), t._v(" "), e("van-button", {
                    staticStyle: {
                        width: "3rem",
                        height: "0.68rem",
                        "min-width": "80px"
                    },
                    attrs: {
                        type: "info"
                    },
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/hongbao")
                        }
                    }
                },
                [e("span", {
                    staticStyle: {
                        color: "#fff",
                        "font-size": "0.3rem"
                    }
                },
                [t._v("前往领取")])])], 1), t._v(" "), e("div", {
                    staticStyle: {
                        display: "flex",
                        "box-sizing": "border-box",
                        padding: "0 12px",
                        "font-size": "0.3rem",
                        "justify-content": "space-between",
                        height: "1.1rem",
                        "align-items": "center"
                    }
                },
                [e("div", {
                    staticStyle: {
                        "font-size": "0.3rem"
                    }
                },
                [t._v(" 剩余领取次数：" + t._s(t.userredpacket.sendnums))]), t._v(" "), e("div", {
                    staticStyle: {
                        "font-size": "0.3rem"
                    }
                },
                [t._v("已领取次数：" + t._s(t.userredpacket.acquirednum))])]), t._v(" "), t.list.length > 0 ? e("van-list", {
                    staticStyle: {
                        "margin-top": "10px",
                        "padding-bottom": "120px"
                    },
                    attrs: {
                        "finished-text": "没有更多了",
                        offset: "300",
                        finished: t.list.length == t.pageData.total
                    },
                    on: {
                        load: t.getData
                    },
                    model: {
                        value: t.loading,
                        callback: function(a) {
                            t.loading = a
                        },
                        expression: "loading"
                    }
                },
                t._l(t.list,
                function(a, i) {
                    return e("van-cell", {
                        key: i
                    },
                    [e("div", {
                        staticStyle: {
                            color: "#888 !important"
                        }
                    },
                    [e("div", {
                        staticStyle: {
                            display: "flex",
                            "justify-content": "space-between"
                        }
                    },
                    [t._v("\n            充值金额 :" + t._s(a.money) + " "), e("span", [t._v("红包金额：" + t._s(a.redpacketmoney))])]), t._v(" "), e("div", [t._v("充值时间:" + t._s(a.created_at))]), t._v(" "), e("div", [t._v("领取时间：" + t._s(a.usetime))])])])
                }), 1) : e("div", {
                    staticStyle: {
                        "margin-top": "60px",
                        "text-align": "center"
                    }
                },
                [e("img", {
                    staticStyle: {
                        width: "35%"
                    },
                    attrs: {
                        src: "/static/image/mescroll-empty.png",
                        alt: ""
                    }
                }), t._v(" "), e("van-divider", {
                    style: {
                        color: "#ccc",
                        borderColor: "#ccc",
                        padding: "20px "
                    },
                    attrs: {
                        dashed: ""
                    }
                },
                [t._v("空空如也")])], 1)], 1)], 1)
            },
            staticRenderFns: []
        };
        var Tt = e("VU/8")(Lt, At, !1,
        function(t) {
            e("rNsN")
        },
        "data-v-2a6f5682", null).exports,
        Et = {
            name: "betRecord",
            data: function() {
                return {
                    date: 4,
                    list: [],
                    pageData: {},
                    page: 1,
                    statuType: ["无效注单", "已结算", "未结算"],
                    dogameLis: [],
                    api_type: "",
                    loading: !1,
                    name: "全平台",
                    show: !1,
                    dateName: ["", "今日", "近7日", "近15日", "近30日"],
                    popup: !1,
                    showXuan: 1
                }
            },
            created: function() {
                this.getdogame(),
                this.getData()
            },
            methods: {
                changDogame: function(t, a) {
                    this.name = t,
                    this.api_type = a,
                    this.popup = !1,
                    this.page = 1,
                    this.getData()
                },
                changtype: function(t, a) {
                    this[t] = a,
                    this.popup = !1,
                    this.page = 1,
                    this.getData()
                },
                showPopup: function(t) {
                    this.popup = !0,
                    this.showXuan = t
                },
                openOrclose: function() {
                    this.show = !this.show
                },
                changtab: function() {
                    this.page = 1,
                    this.list = [],
                    this.pageData = {},
                    this.getData()
                },
                getdogame: function() {
                    var t = this;
                    t.$apiFun.post("/api/balancelist", {}).then(function(a) {
                        console.log(a),
                        200 != a.code && t.showTost(a.message),
                        200 == a.code && (t.dogameLis = a.data, t.dogameLis.unshift({
                            name: "全平台",
                            platname: ""
                        }))
                    })
                },
                changeDate: function() {
                    this.page = 1,
                    this.getData()
                },
                getData: function() {
                    var t = this,
                    a = t.page;
                    if (a > t.pageData.last_page) t.loading = !1;
                    else {
                        t.$parent.showLoading();
                        var e = {
                            date: t.date,
                            page: t.page,
                            api_type: t.api_type
                        };
                        t.$apiFun.post("/api/betrecord", e).then(function(e) {
                            if (200 != e.code && t.$parent.showTost(0, e.message), 200 == e.code) {
                                if (t.pageData = e.data, 1 == t.page) t.list = e.data.data;
                                else {
                                    var i = JSON.parse(n()(t.list));
                                    e.data.data.forEach(function(t) {
                                        i.push(t)
                                    }),
                                    t.list = i
                                }
                                t.page = a + 1
                            }
                            t.loading = !1,
                            t.$parent.hideLoading()
                        }).
                        catch(function(a) {
                            t.$parent.hideLoading(),
                            t.loading = !1
                        })
                    }
                }
            },
            mounted: function() {},
            updated: function() {}
        },
        Ut = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticStyle: {
                        width: "100%",
                        "min-height": "100vh",
                        background: "rgb(237, 241, 255)"
                    }
                },
                [e("van-nav-bar", {
                    staticStyle: {
                        position: "fixed",
                        top: "0",
                        left: "0",
                        width: "100%",
                        "background-color": "#ede9e7"
                    },
                    attrs: {
                        title: "投注记录",
                        "left-arrow": ""
                    },
                    on: {
                        "click-left": function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        height: "46px"
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        width: "95%",
                        "min-width": "250px",
                        margin: "0 auto",
                        background: "#fff",
                        "border-radius": "10px",
                        "box-sizing": "border-box",
                        padding: "10px",
                        "min-height": "90vh"
                    }
                },
                [e("div", {
                    staticClass: "saibox"
                },
                [e("div", {
                    staticClass: "sai",
                    on: {
                        click: function(a) {
                            return t.showPopup(1)
                        }
                    }
                },
                [t._v(t._s(t.name))]), t._v(" "), e("div", {
                    staticClass: "sai",
                    on: {
                        click: function(a) {
                            return t.showPopup(2)
                        }
                    }
                },
                [t._v(t._s(t.dateName[t.date]))])]), t._v(" "), t.list.length > 0 ? e("van-list", {
                    staticStyle: {
                        "margin-top": "10px",
                        "padding-bottom": "120px"
                    },
                    attrs: {
                        "finished-text": "没有更多了",
                        offset: "300",
                        finished: t.list.length == t.pageData.total
                    },
                    on: {
                        load: t.getData
                    },
                    model: {
                        value: t.loading,
                        callback: function(a) {
                            t.loading = a
                        },
                        expression: "loading"
                    }
                },
                t._l(t.list,
                function(a, i) {
                    return e("van-cell", {
                        key: i
                    },
                    [e("div", {
                        staticStyle: {
                            "font-size": "0.3rem"
                        }
                    },
                    [t._v("订单号：" + t._s(a.bet_id))]), t._v(" "), e("div", {
                        staticStyle: {
                            display: "flex",
                            "justify-content": "space-between"
                        }
                    },
                    [e("div", {
                        staticStyle: {
                            "font-size": "0.3rem"
                        }
                    },
                    [t._v("金额 :" + t._s(a.bet_amount))]), t._v(" "), e("div", {
                        staticStyle: {
                            "font-size": "0.3rem"
                        }
                    },
                    [t._v("派彩 :" + t._s(a.win_loss))])]), t._v(" "), e("div", {
                        staticStyle: {
                            display: "flex",
                            "justify-content": "space-between"
                        }
                    },
                    [e("div", {
                        staticStyle: {
                            "font-size": "0.3rem"
                        }
                    },
                    [t._v(t._s(a.Code))]), t._v(" "), e("div", {
                        staticStyle: {
                            "font-size": "0.3rem"
                        }
                    },
                    [t._v(t._s(t.statuType[a.status]))])]), t._v(" "), e("div", {
                        staticStyle: {
                            "font-size": "0.3rem"
                        }
                    },
                    [t._v(t._s(a.bet_time))])])
                }), 1) : e("div", {
                    staticStyle: {
                        "margin-top": "60px",
                        "text-align": "center"
                    }
                },
                [e("img", {
                    staticStyle: {
                        width: "35%"
                    },
                    attrs: {
                        src: "/static/image/mescroll-empty.png",
                        alt: ""
                    }
                }), t._v(" "), e("van-divider", {
                    style: {
                        color: "#ccc",
                        borderColor: "#ccc",
                        padding: "20px "
                    },
                    attrs: {
                        dashed: ""
                    }
                },
                [t._v("空空如也")])], 1)], 1), t._v(" "), e("van-popup", {
                    style: {
                        height: "calc(100% - 1.9rem - 46px)"
                    },
                    attrs: {
                        position: "bottom"
                    },
                    model: {
                        value: t.popup,
                        callback: function(a) {
                            t.popup = a
                        },
                        expression: "popup"
                    }
                },
                [1 == t.showXuan ? e("div", {
                    staticClass: "lisg"
                },
                t._l(t.dogameLis,
                function(a, i) {
                    return e("div", {
                        key: i,
                        staticClass: "bs",
                        on: {
                            click: function(e) {
                                return t.changDogame(a.name, a.platname)
                            }
                        }
                    },
                    [e("div", {
                        class: t.api_type == a.platname ? "lisga act": "lisga"
                    },
                    [t._v(t._s(a.name))])])
                }), 0) : t._e(), t._v(" "), 2 == t.showXuan ? e("div", {
                    staticClass: "lisg"
                },
                [e("div", {
                    staticClass: "bs",
                    on: {
                        click: function(a) {
                            return t.changtype("date", 1)
                        }
                    }
                },
                [e("div", {
                    class: 1 == t.date ? "lisga act": "lisga"
                },
                [t._v("今日")])]), t._v(" "), e("div", {
                    staticClass: "bs",
                    on: {
                        click: function(a) {
                            return t.changtype("date", 2)
                        }
                    }
                },
                [e("div", {
                    class: 2 == t.date ? "lisga act": "lisga"
                },
                [t._v("近7日")])]), t._v(" "), e("div", {
                    staticClass: "bs",
                    on: {
                        click: function(a) {
                            return t.changtype("date", 3)
                        }
                    }
                },
                [e("div", {
                    class: 3 == t.date ? "lisga act": "lisga"
                },
                [t._v("近15日")])]), t._v(" "), e("div", {
                    staticClass: "bs",
                    on: {
                        click: function(a) {
                            return t.changtype("date", 4)
                        }
                    }
                },
                [e("div", {
                    class: 4 == t.date ? "lisga act": "lisga"
                },
                [t._v("近30日")])])]) : t._e()])], 1)
            },
            staticRenderFns: []
        };
        var Dt = e("VU/8")(Et, Ut, !1,
        function(t) {
            e("xpj0")
        },
        "data-v-c5086308", null).exports,
        Nt = {
            name: "activityRecord",
            data: function() {
                return {
                    list: [],
                    pageData: {},
                    page: 1,
                    loading: !1,
                    statuTypeS: ["0未约定", "待审核", "通过", "拒绝", "4未约定"]
                }
            },
            created: function() {
                this.getData()
            },
            methods: {
                getData: function() {
                    var t = this,
                    a = t.page;
                    if (a > t.pageData.last_page) t.loading = !1;
                    else {
                        t.$parent.showLoading();
                        var e = {
                            page: t.page
                        };
                        t.$apiFun.post("/api/activityApplyLog", e).then(function(e) {
                            if (200 != e.code && t.$parent.showTost(0, e.message), 200 == e.code) {
                                if (t.pageData = e.data, 1 == t.page) t.list = e.data.data;
                                else {
                                    var i = JSON.parse(n()(t.list));
                                    e.data.data.forEach(function(t) {
                                        i.push(t)
                                    }),
                                    t.list = i
                                }
                                t.page = a + 1
                            }
                            t.loading = !1,
                            t.$parent.hideLoading()
                        }).
                        catch(function(a) {
                            t.$parent.hideLoading(),
                            t.loading = !1
                        })
                    }
                }
            },
            mounted: function() {},
            updated: function() {}
        },
        zt = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticStyle: {
                        width: "100%",
                        "min-height": "100vh",
                        background: "rgb(237, 241, 255)"
                    }
                },
                [e("van-nav-bar", {
                    staticStyle: {
                        position: "fixed",
                        top: "0",
                        left: "0",
                        width: "100%",
                        "background-color": "#ede9e7"
                    },
                    attrs: {
                        title: "活动申请记录",
                        "left-arrow": ""
                    },
                    on: {
                        "click-left": function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        height: "46px"
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        width: "95%",
                        "min-width": "250px",
                        margin: "0 auto",
                        background: "#fff",
                        "border-radius": "10px",
                        "box-sizing": "border-box",
                        padding: "10px",
                        "min-height": "90vh"
                    }
                },
                [t.list.length > 0 ? e("van-list", {
                    staticStyle: {
                        "margin-top": "10px",
                        "padding-bottom": "120px"
                    },
                    attrs: {
                        "finished-text": "没有更多了",
                        offset: "300",
                        finished: t.list.length == t.pageData.total
                    },
                    on: {
                        load: t.getData
                    },
                    model: {
                        value: t.loading,
                        callback: function(a) {
                            t.loading = a
                        },
                        expression: "loading"
                    }
                },
                t._l(t.list,
                function(a, i) {
                    return e("van-cell", {
                        key: i
                    },
                    [e("div", {
                        staticStyle: {
                            color: "#888 !important"
                        }
                    },
                    [e("div", [t._v("活动标题：" + t._s(a.activity_name))]), t._v(" "), e("div", {
                        staticStyle: {
                            display: "flex",
                            "justify-content": "space-between"
                        }
                    },
                    [t._v("\n              申请时间：" + t._s(a.created_at) + " "), e("span", [t._v("状态： " + t._s(t.statuTypeS[a.state]))])])])])
                }), 1) : e("div", {
                    staticStyle: {
                        "margin-top": "60px",
                        "text-align": "center"
                    }
                },
                [e("img", {
                    staticStyle: {
                        width: "35%"
                    },
                    attrs: {
                        src: "/static/image/mescroll-empty.png",
                        alt: ""
                    }
                }), t._v(" "), e("van-divider", {
                    style: {
                        color: "#ccc",
                        borderColor: "#ccc",
                        padding: "20px "
                    },
                    attrs: {
                        dashed: ""
                    }
                },
                [t._v("空空如也")])], 1)], 1)], 1)
            },
            staticRenderFns: []
        };
        var Pt = e("VU/8")(Nt, zt, !1,
        function(t) {
            e("eEdD")
        },
        "data-v-0a0d7b59", null).exports,
        Bt = {
            name: "transRecord",
            data: function() {
                return {
                    date: 4,
                    list: [],
                    pageData: {},
                    type: 1,
                    page: 1,
                    stateType12: ["未定义", "待审核", "审核通过", "审核拒绝"],
                    stateType34: ["失败", "成功", "待结算", "未定义"],
                    dogameLis: [],
                    api_type: "",
                    loading: !1,
                    name: "全平台",
                    dateName: ["", "今日", "近7日", "近15日", "近30日"],
                    typeName: ["", "存款", "取款", "转入", "转出"],
                    popup: !1,
                    showXuan: 1
                }
            },
            created: function() {
                this.getdogame(),
                this.getData()
            },
            methods: {
                changDogame: function(t, a) {
                    this.name = t,
                    this.api_type = a,
                    this.popup = !1,
                    this.page = 1,
                    this.getData()
                },
                changtype: function(t, a) {
                    this[t] = a,
                    this.popup = !1,
                    this.page = 1,
                    this.getData()
                },
                showPopup: function(t) {
                    this.popup = !0,
                    this.showXuan = t
                },
                openOrclose: function() {
                    this.show = !this.show
                },
                changtab: function() {
                    this.page = 1,
                    this.list = [],
                    this.pageData = {},
                    this.getData()
                },
                getdogame: function() {
                    var t = this;
                    t.$apiFun.post("/api/balancelist", {}).then(function(a) {
                        console.log(a),
                        200 != a.code && t.showTost(a.message),
                        200 == a.code && (t.dogameLis = a.data, t.dogameLis.unshift({
                            name: "全平台",
                            platname: ""
                        }))
                    })
                },
                changeDate: function() {
                    this.page = 1,
                    this.getData()
                },
                getData: function() {
                    var t = this,
                    a = t.page;
                    if (a > t.pageData.last_page) t.loading = !1;
                    else {
                        t.$parent.showLoading();
                        var e = {
                            date: t.date,
                            type: t.type,
                            page: t.page,
                            api_type: t.api_type
                        };
                        t.$apiFun.post("/api/gettransrecord", e).then(function(e) {
                            if (200 != e.code && t.$parent.showTost(0, e.message), 200 == e.code) {
                                if (t.pageData = e.data, 1 == t.page) t.list = e.data.data;
                                else {
                                    var i = JSON.parse(n()(t.list));
                                    e.data.data.forEach(function(t) {
                                        i.push(t)
                                    }),
                                    t.list = i
                                }
                                t.page = a + 1
                            }
                            t.loading = !1,
                            t.$parent.hideLoading()
                        }).
                        catch(function(a) {
                            t.$parent.hideLoading(),
                            t.loading = !1
                        })
                    }
                }
            },
            mounted: function() {},
            updated: function() {}
        },
        Rt = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticStyle: {
                        width: "100%",
                        "min-height": "100vh",
                        background: "rgb(237, 241, 255)"
                    }
                },
                [e("van-nav-bar", {
                    staticStyle: {
                        position: "fixed",
                        top: "0",
                        left: "0",
                        width: "100%",
                        "background-color": "#ede9e7"
                    },
                    attrs: {
                        title: "交易记录",
                        "left-arrow": ""
                    },
                    on: {
                        "click-left": function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        height: "46px"
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        width: "95%",
                        "min-width": "250px",
                        margin: "0 auto",
                        background: "#fff",
                        "border-radius": "10px",
                        "box-sizing": "border-box",
                        padding: "10px",
                        "min-height": "90vh"
                    }
                },
                [e("div", {
                    staticClass: "saibox"
                },
                [e("div", {
                    staticClass: "sai",
                    on: {
                        click: function(a) {
                            return t.showPopup(1)
                        }
                    }
                },
                [t._v(t._s(t.name))]), t._v(" "), e("div", {
                    staticClass: "sai",
                    on: {
                        click: function(a) {
                            return t.showPopup(2)
                        }
                    }
                },
                [t._v(t._s(t.dateName[t.date]))]), t._v(" "), e("div", {
                    staticClass: "sai",
                    on: {
                        click: function(a) {
                            return t.showPopup(3)
                        }
                    }
                },
                [t._v(t._s(t.typeName[t.type]))])]), t._v(" "), t.list.length > 0 ? e("van-list", {
                    staticStyle: {
                        "margin-top": "10px",
                        "padding-bottom": "120px"
                    },
                    attrs: {
                        "finished-text": "没有更多了",
                        offset: "300",
                        finished: t.list.length == t.pageData.total
                    },
                    on: {
                        load: t.getData
                    },
                    model: {
                        value: t.loading,
                        callback: function(a) {
                            t.loading = a
                        },
                        expression: "loading"
                    }
                },
                t._l(t.list,
                function(a, i) {
                    return e("van-cell", {
                        key: i
                    },
                    [1 == t.type || 2 == t.type ? e("div", {
                        staticStyle: {
                            "font-size": "0.3rem"
                        }
                    },
                    [t._v("订单号：" + t._s(a.out_trade_no))]) : t._e(), t._v(" "), e("div", {
                        staticStyle: {
                            display: "flex",
                            "justify-content": "space-between"
                        }
                    },
                    [e("div", {
                        staticStyle: {
                            "font-size": "0.3rem"
                        }
                    },
                    [t._v("金额 :" + t._s(a.amount))]), t._v(" "), e("div", {
                        staticStyle: {
                            "font-size": "0.3rem"
                        }
                    },
                    [t._v(t._s(a.pay_way))]), t._v(" "), e("div", {
                        staticStyle: {
                            "font-size": "0.3rem"
                        }
                    },
                    [t._v(t._s(1 == t.type || 2 == t.type ? t.stateType12[a.state] : t.stateType34[a.state]))])]), t._v(" "), e("div", {
                        staticStyle: {
                            "font-size": "0.3rem"
                        }
                    },
                    [t._v(t._s(a.created_at))])])
                }), 1) : e("div", {
                    staticStyle: {
                        "margin-top": "60px",
                        "text-align": "center"
                    }
                },
                [e("img", {
                    staticStyle: {
                        width: "35%"
                    },
                    attrs: {
                        src: "/static/image/mescroll-empty.png",
                        alt: ""
                    }
                }), t._v(" "), e("van-divider", {
                    style: {
                        color: "#ccc",
                        borderColor: "#ccc",
                        padding: "20px "
                    },
                    attrs: {
                        dashed: ""
                    }
                },
                [t._v("空空如也")])], 1)], 1), t._v(" "), e("van-popup", {
                    style: {
                        height: "calc(100% - 1.9rem - 46px)"
                    },
                    attrs: {
                        position: "bottom"
                    },
                    model: {
                        value: t.popup,
                        callback: function(a) {
                            t.popup = a
                        },
                        expression: "popup"
                    }
                },
                [1 == t.showXuan ? e("div", {
                    staticClass: "lisg"
                },
                t._l(t.dogameLis,
                function(a, i) {
                    return e("div", {
                        key: i,
                        staticClass: "bs",
                        on: {
                            click: function(e) {
                                return t.changDogame(a.name, a.platname)
                            }
                        }
                    },
                    [e("div", {
                        class: t.api_type == a.platname ? "lisga act": "lisga"
                    },
                    [t._v(t._s(a.name))])])
                }), 0) : t._e(), t._v(" "), 2 == t.showXuan ? e("div", {
                    staticClass: "lisg"
                },
                [e("div", {
                    staticClass: "bs",
                    on: {
                        click: function(a) {
                            return t.changtype("date", 1)
                        }
                    }
                },
                [e("div", {
                    class: 1 == t.date ? "lisga act": "lisga"
                },
                [t._v("今日")])]), t._v(" "), e("div", {
                    staticClass: "bs",
                    on: {
                        click: function(a) {
                            return t.changtype("date", 2)
                        }
                    }
                },
                [e("div", {
                    class: 2 == t.date ? "lisga act": "lisga"
                },
                [t._v("近7日")])]), t._v(" "), e("div", {
                    staticClass: "bs",
                    on: {
                        click: function(a) {
                            return t.changtype("date", 3)
                        }
                    }
                },
                [e("div", {
                    class: 3 == t.date ? "lisga act": "lisga"
                },
                [t._v("近15日")])]), t._v(" "), e("div", {
                    staticClass: "bs",
                    on: {
                        click: function(a) {
                            return t.changtype("date", 4)
                        }
                    }
                },
                [e("div", {
                    class: 4 == t.date ? "lisga act": "lisga"
                },
                [t._v("近30日")])])]) : t._e(), t._v(" "), 3 == t.showXuan ? e("div", {
                    staticClass: "lisg"
                },
                [e("div", {
                    staticClass: "bs",
                    on: {
                        click: function(a) {
                            return t.changtype("type", 1)
                        }
                    }
                },
                [e("div", {
                    class: 1 == t.type ? "lisga act": "lisga"
                },
                [t._v("存款")])]), t._v(" "), e("div", {
                    staticClass: "bs",
                    on: {
                        click: function(a) {
                            return t.changtype("type", 2)
                        }
                    }
                },
                [e("div", {
                    class: 2 == t.type ? "lisga act": "lisga"
                },
                [t._v("取款")])]), t._v(" "), e("div", {
                    staticClass: "bs",
                    on: {
                        click: function(a) {
                            return t.changtype("type", 3)
                        }
                    }
                },
                [e("div", {
                    class: 3 == t.type ? "lisga act": "lisga"
                },
                [t._v("转入")])]), t._v(" "), e("div", {
                    staticClass: "bs",
                    on: {
                        click: function(a) {
                            return t.changtype("type", 4)
                        }
                    }
                },
                [e("div", {
                    class: 4 == t.type ? "lisga act": "lisga"
                },
                [t._v("转出")])])]) : t._e()])], 1)
            },
            staticRenderFns: []
        };
        var Ft = e("VU/8")(Bt, Rt, !1,
        function(t) {
            e("DIHi")
        },
        "data-v-2b086399", null).exports,
        Ot = {
            name: "money",
            data: function() {
                return {
                    daoTime: null,
                    balancelist: []
                }
            },
            created: function() {
                var t = this;
                t.getbalancelist(),
                t.$parent.getUserInfoShowLoding(),
                t.daoTime = setInterval(function() {
                    t.getbalancelistNoLoding()
                },
                3500)
            },
            methods: {
                transall: function() {
                    var t = this;
                    t.$parent.showLoading(),
                    t.$apiFun.post("/api/transall", {}).then(function(a) {
                        t.showTost(1, a.message),
                        t.getbalancelist(),
                        t.refreshusermoney(),
                        t.$parent.hideLoading()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    })
                },
                getbalancelist: function() {
                    var t = this;
                    t.$parent.showLoading(),
                    t.$apiFun.post("/api/balancelist", {}).then(function(a) {
                        if (200 !== a.code && t.$parent.showTost(0, a.message), 200 === a.code) {
                            t.balancelist = a.data;
                            var e = a.data;
                            t.balancelist = e
                        }
                        t.$parent.hideLoading()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    })
                },
                getbalancelistNoLoding: function() {
                    var t = this;
                    t.$apiFun.post("/api/balancelist", {}).then(function(a) {
                        if (200 !== a.code && t.$parent.showTost(0, a.message), 200 === a.code) {
                            t.balancelist = a.data;
                            var e = a.data;
                            t.balancelist = e
                        }
                    }).
                    catch(function(t) {})
                },
                refreshusermoney: function() {
                    var t = this;
                    t.$apiFun.post("/api/refreshusermoney", {}).then(function(a) {
                        t.$parent.hideLoading(),
                        200 == a.code && (localStorage.setItem("userInfo", n()(a.data)), t.$store.commit("changUserInfo"))
                    })
                }
            },
            mounted: function() {},
            updated: function() {},
            beforeDestroy: function() {
                this.daoTime && clearInterval(this.daoTime),
                this.daoTime = null
            }
        },
        qt = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticStyle: {
                        "background-color": "#f8f8f8"
                    }
                },
                [e("div", {
                    staticStyle: {
                        "min-height": "100vh",
                        background: "url('/static/image/bg_01.c00a1854e1446ef9fbd9f5b282da92f1.c00a1854.png') no-repeat",
                        "background-size": "100% auto",
                        "background-attachment": "fixed"
                    }
                },
                [e("img", {
                    staticClass: "bancgs",
                    staticStyle: {
                        opacity: "1"
                    },
                    attrs: {
                        src: "/static/image/bank_020021515.png",
                        alt: ""
                    },
                    on: {
                        click: function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticClass: "tit"
                },
                [t._v("我的钱包")]), t._v(" "), e("div", {
                    staticClass: "mefs"
                },
                [e("div", {
                    staticClass: "conts",
                    staticStyle: {
                        "padding-top": "1.4rem"
                    }
                },
                [e("div", {
                    staticClass: "titsg"
                },
                [t._v("总资产（元）")]), t._v(" "), e("div", {
                    staticClass: "mehs"
                },
                [e("div", {
                    staticClass: "lfs"
                },
                [t._v("￥")]), t._v(" "), e("div", {
                    staticClass: "num"
                },
                [t._v(t._s(t.$store.state.userInfo.balance))]), t._v(" "), e("img", {
                    staticClass: "shua",
                    attrs: {
                        src: "/static/image/icon_sx.88b45347bfcdb11586ef9a0872038bf9.png",
                        alt: ""
                    },
                    on: {
                        click: function(a) {
                            return t.$parent.getUserInfoShowLoding()
                        }
                    }
                })])])]), t._v(" "), e("div", {
                    staticClass: "bios"
                },
                [t._m(0), t._v(" "), e("div", {
                    staticClass: "mesg"
                },
                [e("div", {
                    staticClass: "bosgf"
                },
                [t._m(1), t._v(" "), e("div", {
                    staticClass: "bots"
                },
                [e("span", [t._v("￥")]), t._v(t._s(t.$store.state.userInfo.balance))])]), t._v(" ")]), t._v(" "), e("div", {
                    staticClass: "typelist"
                },
                [e("div", {
                    staticClass: "lis",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/recharge")
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/feature_moneydraw.ddbdd6cb1996bc0dccf6c8570d9e0183.ddbdd6cb.png",
                        alt: ""
                    }
                }), t._v("存款")]), t._v(" "), e("div", {
                    staticClass: "lis",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/transfer")
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/feature_moneytransfer.5a83f20d17131faad2162df5435af5ca.5a83f20d.png",
                        alt: ""
                    }
                }), t._v("转账")]), t._v(" "), e("div", {
                    staticClass: "lis",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/withdrawal")
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/feature_withdrawmoney.932feadcf30fa1646577e19f04412aaf.932feadc.png",
                        alt: ""
                    }
                }), t._v("取款")]), t._v(" "), e("div", {
                    staticClass: "lis",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/wallet")
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/feature_bankcard.30833143844bfe739725bd4781495a2d.30833143.png",
                        alt: ""
                    }
                }), t._v("卡片管理")])]), t._v(" "), e("div", {
                    staticClass: "gamensg"
                },
                [e("div", {
                    staticClass: "titws"
                },
                [t._v("\n          场馆余额\n          "), 1 == t.$store.state.userInfo.transferstatus ? e("div", {
                    staticClass: "btn",
                    on: {
                        click: t.transall
                    }
                },
                [t._v("一键回收")]) : t._v(" ")]), t._v(" "), e("div", {
                    staticClass: "gameBox"
                },
                t._l(t.balancelist,
                function(a, i) {
                    return e("div", {
                        key: i,
                        staticClass: "lis"
                    },
                    [e("div", {
                        staticClass: "name"
                    },
                    [t._v(t._s(a.name))]), t._v(" "), e("div", {
                        staticClass: "nmey"
                    },
                    [t._v(t._s(a.balance)),e("img", {
                    staticClass: "shua",
                    staticStyle: {
                        width: "0.35rem",
						"margin-left": "0.2rem"
                    },					
                    attrs: {
                        src: "/static/image/iconRefresh.5b108ae65439270527aeee8ac17c2aca.png",
                        alt: ""
                    },					
                    on: {
                        click: function() {
                            return t.$parent.userapimoney(a.platname)
                        }
                    }
                })])])
                }), 0)]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "1rem"
                    }
                })]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "1rem"
                    }
                })])])
            },
            staticRenderFns: [function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "toptit"
                },
                [a("div", {
                    staticClass: "shu"
                }), this._v("\n        中心钱包（元）\n      ")])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "top"
                },
                [a("img", {
                    attrs: {
                        src: "/static/image/qianbao123.png",
                        alt: ""
                    }
                }), this._v("中心钱包")])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "top"
                },
                [a("img", {
                    attrs: {
                        src: "/static/image/qianbao123.png",
                        alt: ""
                    }
                }), this._v("游戏钱包")])
            }]
        };
        var Vt = e("VU/8")(Ot, qt, !1,
        function(t) {
            e("DXX2")
        },
        "data-v-ed6c0e3c", null).exports,
        jt = {
            name: "recharge",
            data: function() {
                var t;
                return t = {
                    pay_way: "",
                    bankBox: {},
                    payInfo: {},
                    amount: null,
                    cardLis: [],
                    banklist: []
                },
                dt()(t, "bankBox", {}),
                dt()(t, "meyXi", "TRC20"),
                dt()(t, "payWayList", {}),
                dt()(t, "show", !1),
                dt()(t, "userbank", []),
                dt()(t, "userUSD", [1]),
                dt()(t, "min_price", 100),
                dt()(t, "max_price", 1e4),
                t
            },
            created: function() {
                this.getPayWay(),
                this.getBanklist(),
                this.getcard()
            },
            methods: {
                getPayRange: function() {
                    var t = this,
                    a = null;
                    "bank" == t.pay_way && (a = "bank"),
                    "wechat" == t.pay_way && (a = "wechat"),
                    "alipay" == t.pay_way && (a = "alipay"),
                    "alipay" == t.pay_way && (a = "alipay"),
                    "usdt" == t.pay_way && ("ERC20" == t.meyXi && (a = "usdt-erc20"), "TRC20" == t.meyXi && (a = "usdt-trc20")),
                    t.showLoading(),
                    t.$apiFun.post("/api/getPayRange", {
                        type: a
                    }).then(function(a) {
                        200 == a.code && (t.min_price = a.data.min_price, t.max_price = a.data.max_price),
                        t.hideLoading()
                    }).
                    catch(function(a) {
                        t.hideLoading()
                    })
                },
                changShow: function() {
                    this.show = !this.show
                },
                onConfirm: function(t, a) {
                    this.bankBox.bank = t.bank_name,
                    this.show = !1
                },
                onChange: function(t, a, e) {},
                onCancel: function() {
                    this.show = !1
                },
                changXiyi: function(t) {
                    this.meyXi != t && (this.meyXi = t, this.getPayRange())
                },
                getPayWay: function() {
                    var t = this;
                    t.showLoading(),
                    t.$apiFun.get("/api/get_pay_way", {}).then(function(a) {
                        if (200 == a.code) {
                            t.payWayList = a.data,
                            t.payWayList.rengong = 1;
                            var e = t.payWayList;
                            for (var i in e) if (1 == e[i]) return t.pay_way = "card" == i ? "bank": i,
                            t.hideLoading(),
                            void t.getPayRange()
                        }
                        t.hideLoading()
                    }).
                    catch(function(a) {
                        t.hideLoading()
                    })
                },
                payTest: function() {
                    var t = this,
                    a = {};
                    if ("bank" == t.pay_way) {
                        if (a = {
                            paytype: t.pay_way,
                            amount: 1 * t.amount,
                            bank: t.bankBox.bank,
                            bank_address: t.bankBox.bank_address,
                            bank_no: t.bankBox.bank_no,
                            bank_owner: t.bankBox.bank_owner
                        },
                        console.log(a), !a.bank_owner) return void t.showTost(0, "请输入存款人姓名");
                        if (!a.bank) return void t.showTost(0, "请输入银行类型");
                        if (!a.bank_no) return void t.showTost(0, "请输入银行卡号");
                        if (!a.bank_address) return void t.showTost(0, "请输入银行开户行地址")
                    } else a = {
                        paytype: t.pay_way,
                        amount: 1 * t.amount
                    };
                    "usdt" == t.pay_way && (a.catepay = t.meyXi),
                    a.amount < t.min_price || a.amount > t.max_price ? t.showTost(0, "请输入金额在" + t.min_price + "-" + t.max_price + "之间！") : (t.showLoading(), a.paytype = "wechat" == a.paytype ? "wxpay": a.paytype, t.$apiFun.post("/api/recharge", a).then(function(a) {
                        if (console.log(a), 200 != a.code && t.showTost(0, a.message), 200 == a.code) {
                            if (t.amount = null, "bank" == t.pay_way) return t.showTost(1, "提交成功，等待后台审核"),
                            t.bankBox = {},
                            t.amount = null,
                            t.hideLoading(),
                            void t.$router.push({
                                path: "/transRecord"
                            });
                            t.bankBox = {},
                            t.amount = null,
                            t.$router.push({
                                path: "/payInfo?deposit_no=" + a.message
                            })
                        }
                        t.hideLoading()
                    }).
                    catch(function(a) {
                        t.hideLoading()
                    }))
                },
                changMey: function(t) {
                    this.amount = 1 * t
                },
                getBanklist: function() {
                    var t = this;
                    t.$apiFun.post("/api/banklist", {}).then(function(a) {
                        200 != a.code && t.showTost(0, a.message),
                        200 == a.code && (t.banklist = a.data),
                        t.hideLoading()
                    }).
                    catch(function(a) {
                        t.hideLoading()
                    })
                },
                getcard: function() {
                    var t = this;
                    t.showLoading(),
                    t.$apiFun.post("/api/getpaybank", {}).then(function(a) {
                        200 != a.code && t.showTost(0, a.message),
                        200 == a.code && (t.cardLis = a.data, t.hideLoading())
                    }).
                    catch(function(a) {
                        t.hideLoading()
                    })
                },
                changPayway: function(t) {
                    t != this.pay_way && (this.pay_way = t, this.bankBox = {},
                    this.payInfo = {},
                    this.amount = null, this.getPayRange())
                },
                goNav: function(t) {
                    this.$parent.goNav(t)
                },
                doCopy: function(t) {
                    var a = document.createElement("input");
                    a.style.opacity = "0",
                    a.value = t,
                    document.body.appendChild(a),
                    a.select(),
                    document.execCommand("copy"),
                    this.showTost(1, "复制成功！")
                },
                getUserInfo: function() {
                    this.$parent.getUserInfo()
                },
                showLoading: function() {
                    this.$parent.showLoading()
                },
                hideLoading: function() {
                    this.$parent.hideLoading()
                },
                openKefu: function() {
                    this.$parent.openKefu()
                },
                showTost: function(t, a) {
                    this.$parent.showTost(t, a)
                },
                getuseCardlist: function() {
                    var t = this;
                    t.$apiFun.post("/api/getcard", {
                        type: 1
                    }).then(function(a) {
                        200 == a.code && (t.userbank = a.data)
                    }),
                    t.$apiFun.post("/api/getcard", {
                        type: 2
                    }).then(function(a) {
                        200 == a.code && (t.userUSD = a.data)
                    })
                }
            },
            mounted: function() {},
            updated: function() {},
            beforeRouteEnter: function(t, a, e) {
                e(function(t) {
                    console.log(t);
                    t.getuseCardlist()
                })
            }
        },
        Mt = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return t.pay_way ? e("div", {
                    staticClass: "sdg",
                    staticStyle: {
                        width: "100%",
                        "min-height": "100vh",
                        background: "rgb(237, 241, 255)",
                        "padding-bottom": "50px"
                    }
                },
                [e("div", {
                    staticStyle: {
                        width: "100%",
                        background: "#fff"
                    }
                },
                [e("van-nav-bar", {
                    staticStyle: {
                        position: "fixed",
                        top: "0",
                        left: "0",
                        width: "100%",
                        "background-color": "#ede9e7"
                    },
                    attrs: {
                        title: "存款",
                        "left-arrow": ""
                    },
                    on: {
                        "click-left": function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        height: "46px"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "typelis"
                },
                [1 == t.payWayList.card ? e("div", {
                    class: "bank" == t.pay_way ? " tyls atc": "tyls",
                    on: {
                        click: function(a) {
                            return t.changPayway("bank")
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/icoOnlineTransfer2@3x.png",
                        alt: ""
                    }
                }), t._v("网银转账")]) : t._e(), t._v(" "), 1 == t.payWayList.usdt ? e("div", {
                    class: "usdt" == t.pay_way ? " tyls atc": "tyls",
                    on: {
                        click: function(a) {
                            return t.changPayway("usdt")
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/1595237922936176.png",
                        alt: ""
                    }
                }), t._v("USDT")]) : t._e(), t._v(" "), 1 == t.payWayList.wechat ? e("div", {
                    class: "wechat" == t.pay_way ? " tyls atc": "tyls",
                    on: {
                        click: function(a) {
                            return t.changPayway("wechat")
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/QuickWechat.png",
                        alt: ""
                    }
                }), t._v("微信")]) : t._e(), t._v(" "), 1 == t.payWayList.alipay ? e("div", {
                    class: "alipay" == t.pay_way ? " tyls atc": "tyls",
                    on: {
                        click: function(a) {
                            return t.changPayway("alipay")
                        }
                    }
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/icoAlipay2@3x.png",
                        alt: ""
                    }
                }), t._v("支付宝")]) : t._e()]), t._v(" "), "bank" != t.pay_way || 0 == t.userbank.length && 0 == t.userUSD.length ? t._e() : e("div", [e("div", {
                    staticClass: "usrse"
                },
                [t._l(t.cardLis,
                function(a, i) {
                    return e("div", {
                        key: i,
                        staticClass: "bans"
                    },
                    [e("p", [e("span", {
                        staticClass: "frists"
                    },
                    [t._v(" 收款账号 ")]), e("span", {
                        staticClass: "sdsw"
                    },
                    [t._v(t._s(a.bank_no))]), e("span", {
                        staticClass: "copy",
                        on: {
                            click: function(e) {
                                return t.doCopy(a.bank_no)
                            }
                        }
                    },
                    [t._v(" 复制 ")])]), t._v(" "), e("p", [e("span", {
                        staticClass: "frists"
                    },
                    [t._v(" 银行户名 ")]), e("span", {
                        staticClass: "sdsw"
                    },
                    [t._v(t._s(a.bank_owner))]), e("span", {
                        staticClass: "copy",
                        on: {
                            click: function(e) {
                                return t.doCopy(a.bank_owner)
                            }
                        }
                    },
                    [t._v(" 复制 ")])]), t._v(" "), e("p", [e("span", {
                        staticClass: "frists"
                    },
                    [t._v(" 开户行 ")]), e("span", {
                        staticClass: "sdsw"
                    },
                    [t._v(t._s(a.bank_data.bank_name))]), e("span", {
                        staticClass: "copy",
                        on: {
                            click: function(e) {
                                return t.doCopy(a.bank_data.bank_name)
                            }
                        }
                    },
                    [t._v(" 复制 ")])]), t._v(" "), e("p", [e("span", {
                        staticClass: "frists"
                    },
                    [t._v(" 银行地址 ")]), e("span", {
                        staticClass: "sdsw"
                    },
                    [t._v(t._s(a.bank_address))]), e("span", {
                        staticClass: "copy",
                        on: {
                            click: function(e) {
                                return t.doCopy(a.bank_address)
                            }
                        }
                    },
                    [t._v(" 复制 ")])])])
                }), t._v(" "), e("div", {
                    staticClass: "hgs",
                    on: {
                        click: t.changShow
                    }
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("开户银行")]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                },
                [e("van-cell-group", [e("van-field", {
                    attrs: {
                        type: "text",
                        placeholder: "选择开户银行",
                        disabled: ""
                    },
                    model: {
                        value: t.bankBox.bank,
                        callback: function(a) {
                            t.$set(t.bankBox, "bank", a)
                        },
                        expression: "bankBox.bank"
                    }
                })], 1)], 1)]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "0.2rem",
                        background: "#f8f8f8",
                        width: "100wh"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("存款人姓名")]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                },
                [e("van-cell-group", [e("van-field", {
                    attrs: {
                        type: "text",
                        placeholder: "请输入存款人姓名"
                    },
                    model: {
                        value: t.bankBox.bank_owner,
                        callback: function(a) {
                            t.$set(t.bankBox, "bank_owner", a)
                        },
                        expression: "bankBox.bank_owner"
                    }
                })], 1)], 1), t._v(" "), e("div", {
                    staticClass: "lasthg"
                },
                [t._v("为及时到账，请务必输入正确的存款人姓名")])]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "0.2rem",
                        background: "#f8f8f8",
                        width: "100wh"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("银行卡号")]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                },
                [e("van-cell-group", [e("van-field", {
                    attrs: {
                        type: "text",
                        placeholder: "请输入银行卡号"
                    },
                    model: {
                        value: t.bankBox.bank_no,
                        callback: function(a) {
                            t.$set(t.bankBox, "bank_no", a)
                        },
                        expression: "bankBox.bank_no"
                    }
                })], 1)], 1)]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "0.2rem",
                        background: "#f8f8f8",
                        width: "100wh"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("开户行地址")]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                },
                [e("van-cell-group", [e("van-field", {
                    attrs: {
                        type: "text",
                        placeholder: "请输入开户行地址"
                    },
                    model: {
                        value: t.bankBox.bank_address,
                        callback: function(a) {
                            t.$set(t.bankBox, "bank_address", a)
                        },
                        expression: "bankBox.bank_address"
                    }
                })], 1)], 1)]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "0.2rem",
                        background: "#f8f8f8",
                        width: "100wh"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("存款金额")]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                },
                [e("van-cell-group", [e("van-field", {
                    attrs: {
                        label: "￥",
                        type: "text",
                        placeholder: "请输入取款金额 " + t.min_price + " - " + t.max_price
                    },
                    scopedSlots: t._u([{
                        key: "button",
                        fn: function() {
                            return [e("span", {
                                staticStyle: {
                                    color: "#000"
                                }
                            },
                            [t._v(" 元")])]
                        },
                        proxy: !0
                    }], null, !1, 1753935358),
                    model: {
                        value: t.amount,
                        callback: function(a) {
                            t.amount = a
                        },
                        expression: "amount"
                    }
                })], 1)], 1), t._v(" "), e("div", {
                    staticClass: "lasthg"
                })]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "0.2rem",
                        background: "#f8f8f8",
                        width: "100wh"
                    }
                })], 2)]), t._v(" "), "usdt" == t.pay_way ? e("div", [e("div", {
                    staticClass: "tipsh"
                },
                [e("div", {
                    staticClass: "tops"
                },
                [t._v("USDT价格稳定 流通性高 不受监管 "), e("span", {
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/usdtmore")
                        }
                    }
                },
                [t._v("了解更多 >")])]), t._v(" "), t._m(0)]), t._v(" "), e("div", {
                    staticClass: "usrse"
                },
                [e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams sc"
                },
                [t._v("\n            钱包协议\n            "), e("div", {
                    class: "TRC20" == t.meyXi ? " ssa acti": "ssa",
                    on: {
                        click: function(a) {
                            return t.changXiyi("TRC20")
                        }
                    }
                },
                [t._v("TRC20")]), t._v(" "), e("div", {
                    class: "ERC20" == t.meyXi ? " ssa acti": "ssa",
                    staticStyle: {
                        "margin-left": "0.5rem"
                    },
                    on: {
                        click: function(a) {
                            return t.changXiyi("ERC20")
                        }
                    }
                },
                [t._v("ERC20")])]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                })]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "0.2rem",
                        background: "#f8f8f8",
                        width: "100wh"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("存款金额")]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                },
                [e("van-cell-group", [e("van-field", {
                    attrs: {
                        label: "￥",
                        type: "text",
                        placeholder: "请输入取款金额 " + t.min_price + " - " + t.max_price
                    },
                    scopedSlots: t._u([{
                        key: "button",
                        fn: function() {
                            return [e("span", {
                                staticStyle: {
                                    color: "#000"
                                }
                            },
                            [t._v(" 元")])]
                        },
                        proxy: !0
                    }], null, !1, 1753935358),
                    model: {
                        value: t.amount,
                        callback: function(a) {
                            t.amount = a
                        },
                        expression: "amount"
                    }
                })], 1)], 1), t._v(" "), e("div", {
                    staticClass: "lasthg"
                },
                [e("span", {
                    staticStyle: {
                        color: "red",
                        "font-size": "0.43rem",
                        "margin-right": "10px"
                    }
                },
                [t._v("≈ ")]), t._v(" " + t._s(t.amount ? Math.floor(t.amount / t.$store.state.userInfo.usdtrate * 100) / 100 : "0.00") + "USDT ; 参考汇率：" + t._s(t.$store.state.userInfo.usdtrate))])]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "0.2rem",
                        background: "#f8f8f8",
                        width: "100wh"
                    }
                }), t._v(" "), t._m(1), t._v(" "), e("div", {
                    staticStyle: {
                        height: "0.2rem",
                        background: "#f8f8f8",
                        width: "100wh"
                    }
                })])]) : t._e(), t._v(" "), "wechat" == t.pay_way || "alipay" == t.pay_way ? e("div", [e("div", {
                    staticStyle: {
                        height: "0.2rem",
                        background: "#f8f8f8",
                        width: "100wh"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "usrse"
                },
                [e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("存款金额")]), t._v(" "), e("div", {
                    staticStyle: {
                        "border-bottom": "1px solid #f2f2f2"
                    }
                },
                [e("van-cell-group", [e("van-field", {
                    attrs: {
                        label: "￥",
                        type: "text",
                        placeholder: "请输入取款金额 " + t.min_price + " - " + t.max_price
                    },
                    scopedSlots: t._u([{
                        key: "button",
                        fn: function() {
                            return [e("span", {
                                staticStyle: {
                                    color: "#000"
                                }
                            },
                            [t._v(" 元")])]
                        },
                        proxy: !0
                    }], null, !1, 1753935358),
                    model: {
                        value: t.amount,
                        callback: function(a) {
                            t.amount = a
                        },
                        expression: "amount"
                    }
                })], 1)], 1), t._v(" "), e("div", {
                    staticClass: "lasthg"
                })]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "0.2rem",
                        background: "#f8f8f8",
                        width: "100wh"
                    }
                })])]) : t._e(), t._v(" "), e("div", {
                    staticStyle: {
                        margin: "0 auto",
                        width: "86%"
                    }
                },
                [e("van-button", {
                    staticStyle: {
                        "margin-top": "20px",
                        width: "100%"
                    },
                    attrs: {
                        type: "info"
                    },
                    on: {
                        click: t.payTest
                    }
                },
                [t._v("立即存款")]), t._v(" "), e("div", {
                    staticClass: "textcns",
                    staticStyle: {
                        "text-align": "center",
                        color: "#999",
                        padding: "10px 0"
                    }
                },
                [t._v("存款遇到问题？联系 "), e("span", {
                    staticStyle: {
                        color: "#cf866b",
                        display: "inline-block",
                        margin: "0 6px"
                    },
                    on: {
                        click: t.$parent.openKefu
                    }
                },
                [t._v("人工客服")]), t._v(" 解决")])], 1)], 1), t._v(" "), t.show ? e("div", {
                    staticStyle: {
                        position: "fixed",
                        width: "100%",
                        height: "100%",
                        top: "0",
                        "z-index": "999",
                        background: "rgba(0, 0, 0, 0.39)"
                    }
                },
                [e("van-picker", {
                    staticStyle: {
                        position: "absolute",
                        bottom: "0",
                        left: "0",
                        width: "100%"
                    },
                    attrs: {
                        title: "银行类型",
                        "show-toolbar": "",
                        columns: t.banklist,
                        "value-key": "bank_name"
                    },
                    on: {
                        confirm: t.onConfirm,
                        cancel: t.onCancel,
                        change: t.onChange
                    }
                })], 1) : t._e(), t._v(" "), 0 == t.userbank.length && 0 == t.userUSD.length ? e("div", {
                    staticClass: "domainModal_domainView__FWCzg"
                },
                [e("div", {
                    staticClass: "domainModal_mask__24Y2m domainModal_fadeIn__1I3AS false",
                    on: {
                        click: function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticClass: "domainModal_content__1nBgc",
                    staticStyle: {
                        width: "80%"
                    }
                },
                [e("div", {
                    staticClass: "domainModal_contentTop__2C4jc",
                    attrs: {
                        id: "domain"
                    }
                },
                [e("img", {
                    staticStyle: {
                        position: "absolute",
                        top: "5px",
                        right: "13px",
                        width: "0.6rem"
                    },
                    attrs: {
                        src: "/static/image/hongbaocolse.png",
                        alt: ""
                    },
                    on: {
                        click: function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticClass: "domainModal_top__1omYS"
                },
                [t._v("温馨提示")]), t._v(" "), e("div", {
                    staticClass: "domainModal_middle__3gQPm",
                    staticStyle: {
                        padding: "30px"
                    }
                },
                [t._v("您还为绑定任何钱包卡片，请前往绑定！")]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "30px",
                        "text-align": "center",
                        "line-height": "30px",
                        color: "#fff"
                    },
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/wallet")
                        }
                    }
                },
                [t._v("前往绑定")])])])]) : t._e()]) : t._e()
            },
            staticRenderFns: [function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "tsg"
                },
                [a("div", {
                    staticClass: "tsgs"
                },
                [this._v("绑定协议地址")]), this._v(" "), a("div", {
                    staticClass: "tsgs"
                },
                [this._v("交易所划转")]), this._v(" "), a("div", {
                    staticClass: "tsgs"
                },
                [this._v("完成取款")])])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "hgs"
                },
                [a("div", {
                    staticClass: "nams"
                },
                [this._v("温馨提示")]), this._v(" "), a("div", {
                    staticClass: "lasthg",
                    staticStyle: {
                        "border-top": "1px solid #eee",
                        "margin-top": "10px"
                    }
                },
                [this._v("请选择正确的USDT协议付款，若您选择错误的协议付款，平台将无法收到您的付款，为此我们不承担任何负责！")])])
            }]
        };
        var Gt = e("VU/8")(jt, Mt, !1,
        function(t) {
            e("sx3J")
        },
        "data-v-3a3d0d39", null).exports,
        Yt = {
            name: "payInfo",
            data: function() {
                return {
                    payInfo: {},
                    type: null,
                    daoTime: null,
                    m: 0,
                    s: 0
                }
            },
            created: function() {
                var t = this.$route.query;
                t.deposit_no && this.getpayinfo(t.deposit_no)
            },
            methods: {
                doCopy: function(t) {
                    var a = document.createElement("input");
                    a.style.opacity = "0",
                    a.value = t,
                    document.body.appendChild(a),
                    a.select(),
                    document.execCommand("copy"),
                    this.$parent.showTost(1, "复制成功！")
                },
                getpayinfo: function(t) {
                    var a = this,
                    e = this;
                    this.$parent.showLoading(),
                    e.$apiFun.post("/api/payinfo", {
                        deposit_no: t
                    }).then(function(t) {
                        console.log(t),
                        200 != t.code && e.$parent.showTost(0, t.message),
                        200 == t.code && (e.payInfo = t.data, e.type = t.message, e.countTime()),
                        a.$parent.hideLoading()
                    })
                },
                countTime: function() {
                    var t = (new Date).getTime(),
                    a = this.payInfo.info.created_at,
                    e = new Date(a).getTime() + 36e5 - t;
                    if (! (e >= 0)) return clearInterval(this.countTime),
                    void(this.countTime = null);
                    this.m = Math.floor(e / 1e3 / 60 % 60),
                    this.s = Math.floor(e / 1e3 % 60);
                    this.m,
                    this.m,
                    this.s,
                    this.s;
                    setTimeout(this.countTime, 1e3)
                }
            },
            mounted: function() {},
            updated: function() {},
            beforeDestroy: function() {
                this.countTime && clearInterval(this.countTime),
                this.countTime = null
            }
        },
        Jt = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticClass: "app app-ti_green metransRecord",
                    attrs: {
                        "data-v-f531b812": ""
                    }
                },
                [e("div", {
                    staticClass: "header",
                    attrs: {
                        "data-v-8a75a126": "",
                        "data-v-f531b812": ""
                    }
                },
                [e("div", {
                    staticClass: "header__top-wrapper",
                    attrs: {
                        "data-v-8a75a126": ""
                    }
                },
                [e("div", {
                    staticClass: "van-nav-bar van-nav-bar--fixed fixed-top rounded-corners nav-header",
                    attrs: {
                        "data-v-8a75a126": ""
                    }
                },
                [e("div", {
                    staticClass: "van-nav-bar__content"
                },
                [e("div", {
                    staticClass: "van-nav-bar__left",
                    on: {
                        click: function(a) {
                            return t.$router.back()
                        }
                    }
                },
                [e("i", {
                    staticClass: "van-icon van-icon-arrow-left van-nav-bar__arrow"
                })]), t._v(" "), e("div", {
                    staticClass: "van-nav-bar__title van-ellipsis"
                },
                [t._v("充值信息")])])])])]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "40px"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "wrapper green-wrapper",
                    attrs: {
                        "data-v-334775a8": "",
                        "data-v-f531b812": ""
                    }
                },
                [e("div", {
                    attrs: {
                        "data-v-334775a8": ""
                    }
                },
                [e("div", {
                    staticClass: "PayInfoTime green-PayInfoTime",
                    attrs: {
                        "data-v-334775a8": ""
                    }
                },
                [e("div", {
                    staticClass: "PayAmount"
                },
                [e("span", {
                    staticClass: "Amount"
                },
                [t._v(t._s(t.payInfo.info.amount))]), e("span", [t._v(" 元 ")])]), t._v(" "), e("div", {
                    staticClass: "Countdown"
                },
                [e("div", [t._v("\n            请在"), e("span", {
                    attrs: {
                        place: "time"
                    }
                },
                [t._v(t._s(t.m >= 10 ? t.m: "0" + t.m) + "：" + t._s(t.s >= 10 ? t.s: "0" + t.s))]), t._v("内完成支付\n          ")])]), t._v(" "), e("div", [t._v("成功付款后，将自动到账！")]), t._v(" "), e("div", [t._v("如有问题，请"), e("span", {
                    staticClass: "contact-customer",
                    attrs: {
                        place: "thing"
                    },
                    on: {
                        click: t.$parent.openKefu
                    }
                },
                [t._v(" 联系客服 ")]), t._v("确认")])])]), t._v(" "), e("div", {
                    staticClass: "transaction-detail bg",
                    attrs: {
                        "data-v-334775a8": ""
                    }
                },
                ["usdtpay" == t.type ? e("p", {
                    attrs: {
                        "data-v-334775a8": ""
                    }
                },
                [e("span", {
                    attrs: {
                        "data-v-334775a8": ""
                    }
                },
                [t._v(" 收款地址 ")]), e("span", {
                    staticStyle: {
                        "word-break": "break-word",
                        "max-width": "240px"
                    },
                    attrs: {
                        "data-v-334775a8": ""
                    }
                },
                [e("span", {
                    staticClass: "transNum paddingSty",
                    attrs: {
                        "data-v-334775a8": ""
                    }
                },
                [t._v(t._s(t.payInfo.cardlist.mch_id))]), e("span", {
                    staticClass: "copy",
                    attrs: {
                        "data-v-334775a8": ""
                    },
                    on: {
                        click: function(a) {
                            return t.doCopy(t.payInfo.cardlist.mch_id)
                        }
                    }
                },
                [t._v(" 复制 ")])])]) : t._e(), t._v(" "), e("p", {
                    attrs: {
                        "data-v-334775a8": ""
                    }
                },
                [e("span", {
                    attrs: {
                        "data-v-334775a8": ""
                    }
                },
                [t._v(" 订单号 ")]), e("span", {
                    attrs: {
                        "data-v-334775a8": ""
                    }
                },
                [e("span", {
                    staticClass: "transNum paddingSty",
                    attrs: {
                        "data-v-334775a8": ""
                    }
                },
                [t._v(t._s(t.payInfo.deposit_no))]), t._e()])]), t._v(" "), e("p", {
                    attrs: {
                        "data-v-334775a8": ""
                    }
                },
                [t._v("交易时间 "), e("span", {
                    staticClass: "tran-time",
                    attrs: {
                        "data-v-334775a8": ""
                    }
                },
                [t._v(" " + t._s(t.payInfo.info.created_at) + " ")])]), t._v(" "), e("p", {
                    attrs: {
                        "data-v-334775a8": ""
                    }
                },
                [t._v("\n        充值方式"), e("span", {
                    staticClass: "tran-type",
                    attrs: {
                        "data-v-334775a8": ""
                    }
                },
                [t._v(t._s(t.payInfo.info.paytype))])]), t._v(" "), "usdtpay" == t.type ? e("p", {
                    attrs: {
                        "data-v-334775a8": ""
                    }
                },
                [t._v("\n        钱包协议"), e("span", {
                    staticClass: "tran-type",
                    attrs: {
                        "data-v-334775a8": ""
                    }
                },
                [t._v(t._s(t.payInfo.cardlist.content))])]) : t._e(), t._v(" "), e("img", {
                    staticStyle: {
                        width: "80%",
                        display: "block",
                        margin: "10px auto"
                    },
                    attrs: {
                        src: t.payInfo.cardlist.payimg,
                        alt: ""
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "footer",
                    attrs: {
                        "data-v-334775a8": ""
                    }
                },
                [e("div", {
                    staticClass: "goback-button",
                    attrs: {
                        "data-v-334775a8": ""
                    },
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/transRecord")
                        }
                    }
                },
                [e("img", {
                    staticClass: "icon",
                    attrs: {
                        "data-v-334775a8": "",
                        src: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABoAAAAWCAMAAADpVnyHAAAAPFBMVEVHcEwLqoUPqIUPqIYIp4cAr4AOqIYMp4cOp4UNp4UPqIYPqIYPqIYOp4YOqIUPqIYOqIUPp4UNqYYPqIanHmPRAAAAE3RSTlMAMO/wIBBwQIBg0MDfoLCvkOBQvn0j8QAAAJFJREFUGBl1wYkBwiAQBMAlPHdAXrf/XgVJFA3OoOMi/ogTBUM7yYABn1ko7szMSnETJ74ofu08beLQ8xs7c/C4mMRvs6AxE28ULwcHIirLkYgicmRyKMRyIKNyiQOCyi88LSJRV1YZTWCjqJxakg6NWFaKxiQy4OQSC8XJr1xx8QvJgIs/Mj4CafAmREce6MgTIHASgfcpjWAAAAAASUVORK5CYII="
                    }
                }), e("span", {
                    attrs: {
                        "data-v-334775a8": ""
                    }
                },
                [t._v("充值完成")])]), t._v(" "), e("div", {
                    staticClass: "seedetail-button",
                    attrs: {
                        "data-v-334775a8": ""
                    },
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/transRecord")
                        }
                    }
                },
                [e("img", {
                    staticClass: "icon",
                    attrs: {
                        "data-v-334775a8": "",
                        src: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABsAAAAcCAMAAACnDzTfAAAAOVBMVEUMqIcPqIYOqIUOqIYPqIUAr4ALqoVHcEwPp4YOqYcNp4UPqIYPp4UOqIYOqIUIp4cNqYYOqIUPqIbGVSZiAAAAEnRSTlM/0JBw8BAwAMB/YN/goG8gULADspVqAAAAtklEQVQoz42S2xbEEAxFg0hCbzP5/48d2lqL0mnPm2xHboDZL5NeZCwnAW+oA5mdfXX+wEURNWSmCtwpqiRGqj1iyFGAJxZDo1gzaYuUmllpZN/mo7Y9epvvHxvrmZ1v5oBfZZLgR4yOXSLxpYfkMooWHCr6Lp87HH5W2zFRe94xAxarmdGNT7o/UfKd/2VRXKHUyXudAXcD5LKLcn/llPy5JydYzcWl5YYt+QluZplem+8Ye6EfKyMbAQTPPjYAAAAASUVORK5CYII="
                    }
                }), e("span", {
                    attrs: {
                        "data-v-334775a8": ""
                    }
                },
                [t._v("资金明细")])])])]), t._v(" "), e("div", {
                    staticClass: "float-divbox",
                    attrs: {
                        "data-v-f531b812": ""
                    }
                }), t._v(" "), e("span", {
                    staticClass: "customer-service-container",
                    attrs: {
                        "data-v-7b0f8a3e": "",
                        "data-v-f531b812": ""
                    }
                }), e("span", {
                    attrs: {
                        "data-v-f531b812": ""
                    }
                }), t._v(" "), t._m(0)])
            },
            staticRenderFns: [function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "select-service-line-view select-service-line-view",
                    attrs: {
                        "data-v-55ec3770": "",
                        "data-v-f531b812": ""
                    }
                },
                [a("dl", {
                    staticClass: "select-service-list",
                    attrs: {
                        "data-v-55ec3770": ""
                    }
                },
                [a("div", {
                    staticStyle: {
                        height: "55px"
                    },
                    attrs: {
                        "data-v-55ec3770": ""
                    }
                })])])
            }]
        };
        var Xt = e("VU/8")(Yt, Jt, !1,
        function(t) {
            e("f3ov")
        },
        "data-v-0527af62", null).exports,
        Ht = {
            name: "withdrawal",
            data: function() {
                return {
                    usercardLis: [],
                    usdssLis: [],
                    amount: null,
                    bankId: null,
                    chanmeyXi: null,
                    password: null,
                    activeName: 1,
                    daoTime: null,
                    balancelist: [],
                    showLis: 3,
                    show: !1,
                    hgInfo: {},
                    betAmount: null
                }
            },
            created: function() {
                var t = this;
                t.getBetAmount(),
                t.getUsercard(),
                t.getUsdssList(),
                t.getbalancelist(),
                t.daoTime = setInterval(function() {
                    t.getbalancelistNoLoding()
                },
                3500)
            },
            methods: {
                getBetAmount: function() {
                    var t = this;
                    t.$apiFun.post("/api/getBetAmount", {}).then(function(a) {
                        200 != a.code && t.$parent.showTost(0, a.message),
                        200 == a.code && (t.betAmount = a.data.bet_amount)
                    }).
                    catch(function(t) {})
                },
                bigMey: function(t) {
                    this.amount = 1 * t
                },
                changShow: function() {
                    this.show = !this.show
                },
                changShowLis: function(t) {
                    this.showLis = t
                },
                getbalancelist: function() {
                    var t = this;
                    t.$parent.showLoading(),
                    t.$apiFun.post("/api/balancelist", {}).then(function(a) {
                        if (200 !== a.code && t.$parent.showTost(0, a.message), 200 === a.code) {
                            t.balancelist = a.data;
                            var e = a.data;
                            t.balancelist = e
                        }
                        t.$parent.hideLoading()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    })
                },
                getbalancelistNoLoding: function() {
                    var t = this;
                    t.$apiFun.post("/api/balancelist", {}).then(function(a) {
                        if (200 !== a.code && t.$parent.showTost(0, a.message), 200 === a.code) {
                            t.balancelist = a.data;
                            var e = a.data;
                            t.balancelist = e
                        }
                    }).
                    catch(function(t) {})
                },
                transall: function() {
                    var t = this;
                    t.$parent.showLoading(),
                    t.$apiFun.post("/api/transall", {}).then(function(a) {
                        t.showTost(1, a.message),
                        t.getbalancelist(),
                        t.refreshusermoney(),
                        t.$parent.hideLoading()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    })
                },
                changApiType: function(t) {
                    if (this.hgInfo = t, console.log(t), 1 == this.qutype) {
                        var a = null;
                        this.usdssLis.forEach(function(e) {
                            e.id != t || (a = e.bank_owner)
                        }),
                        this.chanmeyXi = a
                    } else this.chanmeyXi = null;
                    this.bankId = t.id,
                    this.password = null,
                    this.amount = null,
                    this.show = !1
                },
                changevT: function(t) {
                    console.log(t),
                    t != this.activeName && (this.hgInfo = {},
                    this.activeName = t, this.amount = null, this.bankId = null, this.chanmeyXi = null, this.password = null)
                },
                withdraw: function() {
                    var t = this,
                    a = t.bankId,
                    e = t.amount,
                    i = t.password;
                    a ? e < 100 ? t.$parent.showTost(0, "单笔取款不能低于100元") : i ? (t.$parent.showLoading(), t.$apiFun.post("/api/withdraw", {
                        amount: e,
                        bank: a,
                        password: i
                    }).then(function(a) {
                        200 != a.code && t.$parent.showTost(0, a.message),
                        200 == a.code && (t.$parent.showTost(1, "提交成功，等待后台审核"), t.changevT(), setTimeout(function() {
                            t.$router.push({
                                path: "/transRecord"
                            })
                        },
                        1500)),
                        t.$parent.hideLoading()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    })) : t.$parent.showTost(0, "请输入您的支付密码") : t.$parent.showTost(0, "请选择您要提现到的银行卡")
                },
                withdraw1: function() {
                    var t = this,
                    a = t.bankId,
                    e = t.amount,
                    i = t.password;
                    a ? e < 100 ? t.$parent.showTost(0, "单笔取款不能低于100元") : i ? (t.$parent.showLoading(), t.$apiFun.post("/api/withdraw", {
                        amount: e,
                        bank: a,
                        password: i
                    }).then(function(a) {
                        200 != a.code && t.$parent.showTost(0, a.message),
                        200 == a.code && (t.$parent.showTost(1, "提交成功，等待后台审核"), t.changevT(), setTimeout(function() {
                            t.$router.push({
                                path: "/transRecord"
                            })
                        },
                        1500)),
                        t.$parent.hideLoading()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    })) : t.$parent.showTost(0, "请输入您的支付密码") : t.$parent.showTost(0, "请选择USDT地址")
                },
                getUsercard: function() {
                    var t = this,
                    a = this;
                    this.$parent.showLoading(),
                    a.$apiFun.post("/api/getcard", {
                        type: 1
                    }).then(function(e) {
                        200 == e.code && (a.usercardLis = e.data),
                        t.$parent.hideLoading()
                    })
                },
                getUsdssList: function() {
                    var t = this,
                    a = this;
                    this.$parent.showLoading(),
                    a.$apiFun.post("/api/getcard", {
                        type: 2
                    }).then(function(e) {
                        200 == e.code && (a.usdssLis = e.data),
                        t.$parent.hideLoading()
                    })
                }
            },
            mounted: function() {},
            updated: function() {},
            beforeDestroy: function() {
                this.daoTime && clearInterval(this.daoTime),
                this.daoTime = null
            }
        },
        Qt = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticClass: "sdg sdgg",
                    staticStyle: {
                        width: "100%",
                        "min-height": "100vh",
                        "background-color": "#f1f1f1",
                        "padding-bottom": "50px"
                    }
                },
                [e("van-nav-bar", {
                    staticStyle: {
                        position: "fixed",
                        top: "0",
                        left: "0",
                        width: "100%",
                        "background-color": "#ede9e7",
                        "z-index": "222"
                    },
                    attrs: {
                        title: "取款",
                        "left-arrow": ""
                    },
                    on: {
                        "click-left": function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        height: "46px"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "tabVox"
                },
                [e("div", {
                    class: 1 == t.activeName ? "tab atc": "tab",
                    on: {
                        click: function(a) {
                            return t.changevT(1)
                        }
                    }
                },
                [t._v("USDT取款")]), t._v(" "), e("div", {
                    class: 2 == t.activeName ? "tab atc": "tab",
                    on: {
                        click: function(a) {
                            return t.changevT(2)
                        }
                    }
                },
                [t._v("银行卡取款")])]), t._v(" "), e("div", {
                    staticStyle: {
                        background: "#fff",
                        "box-sizing": "border-box",
                        padding: "0 20px"
                    }
                },
                [e("div", {
                    staticClass: "qibao"
                },
                [e("div", {
                    staticClass: "fes"
                },
                [t._v("钱包金额")]), t._v(" "), e("div", {
                    staticClass: "imgs"
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/iconRefresh.5b108ae65439270527aeee8ac17c2aca.png",
                        alt: ""
                    },
                    on: {
                        click: function(a) {
                            return t.$parent.getUserInfoShowLoding()
                        }
                    }
                })]), t._v(" "), e("div", {
                    staticClass: "btns",
                    on: {
                        click: t.transall
                    }
                },
                [t._v("一键回收")])]), t._v(" "), e("div", {
                    staticClass: "mesg"
                },
                [e("div", {
                    staticClass: "bosgf"
                },
                [t._m(0), t._v(" "), e("div", {
                    staticClass: "bots"
                },
                [e("span", [t._v("￥")]), t._v(t._s(t.$store.state.userInfo.balance))])]), t._v(" "), e("div", {
                    staticClass: "bosgf"
                },
                [t._m(1), t._v(" "), e("div", {
                    staticClass: "bots"
                },
                [e("span", [t._v("￥")]), t._v(t._s(t.$store.state.userInfo.gameblance))])])]), t._v(" "), t.balancelist.length ? e("div", {
                    staticClass: "gameBox"
                },
                [t._l(t.balancelist,
                function(a, i) {
                    return i < t.showLis ? e("div", {
                        key: i,
                        staticClass: "lis"
                    },
                    [e("div", {
                        staticClass: "name"
                    },
                    [t._v(t._s(a.name))]), t._v(" "), e("div", {
                        staticClass: "num"
                    },
                    [t._v(t._s(a.balance))])]) : t._e()
                }), t._v(" "), 3 != t.showLis ? e("div", {
                    staticClass: "lis",
                    on: {
                        click: function(a) {
                            return t.changShowLis(3)
                        }
                    }
                },
                [e("div", {
                    staticClass: "name"
                },
                [t._v("收起")]), t._v(" "), t._m(2)]) : t._e(), t._v(" "), 3 == t.showLis ? e("div", {
                    staticClass: "lis",
                    on: {
                        click: function(a) {
                            return t.changShowLis(t.balancelist.length)
                        }
                    }
                },
                [e("div", {
                    staticClass: "name"
                },
                [t._v("展开")]), t._v(" "), t._m(3)]) : t._e()], 2) : t._e()]), t._v(" "), 1 == t.activeName ? e("div", {
                    staticClass: "usrse"
                },
                [0 == t.usdssLis.length ? e("div", {
                    staticClass: "hgs",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/addUsdtCard")
                        }
                    }
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("选择USDT地址")]), t._v(" "), e("div", {
                    staticStyle: {
                        color: "#cf866b",
                        height: "30px",
                        "line-height": "30px",
                        "text-align": "center"
                    }
                },
                [t._v("+添加USDT地址")])]) : e("div", {
                    staticClass: "hgs",
                    on: {
                        click: t.changShow
                    }
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("选择USDT地址")]), t._v(" "), t.bankId ? e("div", {
                    staticClass: "cardhgs"
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/1595237922936176.png",
                        alt: ""
                    }
                }), t._v(" "), e("div", [t._v(t._s(t.hgInfo.bank_owner) + " "), e("span", [t._v("****")]), e("span", [t._v("****")]), e("span", [t._v("****")]), t._v(t._s(t.hgInfo.bank_no.substr( - 4)))])]) : e("div", {
                    staticStyle: {
                        color: "#cf866b",
                        height: "30px",
                        "line-height": "30px",
                        "text-align": "center"
                    }
                },
                [t._v("请选择USDT地址")])]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "0.2rem",
                        background: "#f8f8f8",
                        width: "100wh"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("打码量")]), t._v(" "), e("div", [e("van-cell-group", [e("van-field", {
                    attrs: {
                        type: "text",
                        disabled: "",
                        placeholder: "打码量"
                    },
                    model: {
                        value: t.betAmount,
                        callback: function(a) {
                            t.betAmount = a
                        },
                        expression: "betAmount"
                    }
                })], 1)], 1)]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "0.2rem",
                        background: "#f8f8f8",
                        width: "100wh"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("取款金额")]), t._v(" "), e("div", [e("van-cell-group", [e("van-field", {
                    attrs: {
                        type: "text",
                        placeholder: "请输入取款金额"
                    },
                    scopedSlots: t._u([{
                        key: "button",
                        fn: function() {
                            return [e("van-button", {
                                attrs: {
                                    size: "mini",
                                    type: "info"
                                },
                                on: {
                                    click: function(a) {
                                        return t.bigMey(t.$store.state.userInfo.balance)
                                    }
                                }
                            },
                            [t._v("最大金额")])]
                        },
                        proxy: !0
                    }], null, !1, 2903943802),
                    model: {
                        value: t.amount,
                        callback: function(a) {
                            t.amount = a
                        },
                        expression: "amount"
                    }
                })], 1)], 1)]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "0.2rem",
                        background: "#f8f8f8",
                        width: "100wh"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("支付密码")]), t._v(" "), e("div", [e("van-cell-group", [e("van-field", {
                    attrs: {
                        type: "password",
                        autocomplete: "new-password",
                        placeholder: "请输入支付密码"
                    },
                    model: {
                        value: t.password,
                        callback: function(a) {
                            t.password = a
                        },
                        expression: "password"
                    }
                })], 1)], 1)]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "0.2rem",
                        background: "#f8f8f8",
                        width: "100wh"
                    }
                }), t._v(" "), t.chanmeyXi ? e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("每笔手续费")]), t._v(" "), e("div", [t._v(t._s("ERC20" == t.chanmeyXi ? t.$store.state.userInfo.withdrawcashfee: t.$store.state.userInfo.withdrawfeeusdttrc) + " USDT")])]) : t._e(), t._v(" "), t.chanmeyXi ? e("div", {
                    staticStyle: {
                        height: "0.2rem",
                        background: "#f8f8f8",
                        width: "100wh"
                    }
                }) : t._e(), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("折合USDT")]), t._v(" "), e("div", {
                    staticStyle: {
                        "padding-top": "5px"
                    }
                },
                [e("span", {
                    staticStyle: {
                        color: "rgb(240, 80, 80)"
                    }
                },
                [t._v("≈ ")]), t._v(t._s(t.amount ? Math.floor(t.amount / t.$store.state.userInfo.withdrawusdtrate * 100) / 100 : "0.00") + " SDT          参考汇率：" + t._s(t.$store.state.userInfo.withdrawusdtrate) + " 实时变化\n      ")]), t._v(" "), e("div", {
                    staticClass: "lasthg",
                    staticStyle: {
                        padding: "5px 0"
                    }
                },
                [t._v("实际到账：" + t._s(t.amount ? Math.floor(t.amount / t.$store.state.userInfo.withdrawusdtrate * 100) / 100 - ("ERC20" == t.chanmeyXi ? 1 * t.$store.state.userInfo.withdrawcashfee: 1 * t.$store.state.userInfo.withdrawfeeusdttrc) : "0.00") + "USDT")])]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "0.2rem",
                        background: "#f8f8f8",
                        width: "100wh"
                    }
                })]) : t._e(), t._v(" "), 2 == t.activeName ? e("div", {
                    staticClass: "usrse"
                },
                [0 == t.usercardLis.length ? e("div", {
                    staticClass: "hgs",
                    on: {
                        click: function(a) {
                            return t.$parent.goNav("/addBankCard")
                        }
                    }
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("选择银行卡")]), t._v(" "), t._m(4)]) : e("div", {
                    staticClass: "hgs",
                    on: {
                        click: t.changShow
                    }
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("选择银行卡")]), t._v(" "), t.bankId ? e("div", {
                    staticClass: "cardhgs"
                },
                [e("img", {
                    attrs: {
                        src: t.hgInfo.ico,
                        alt: ""
                    }
                }), t._v(" "), e("div", [t._v(t._s(t.hgInfo.bank) + " "), e("span", [t._v(t._s(t.hgInfo.bank_owner))]), e("span", [t._v("****")]), t._v(t._s(t.hgInfo.bank_no.substr( - 4)))])]) : e("div", {
                    staticStyle: {
                        color: "#cf866b",
                        height: "30px",
                        "line-height": "30px",
                        "text-align": "center"
                    }
                },
                [t._v("请选择银行卡")])]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "0.2rem",
                        background: "#f8f8f8",
                        width: "100wh"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("打码量")]), t._v(" "), e("div", [e("van-cell-group", [e("van-field", {
                    attrs: {
                        type: "text",
                        disabled: "",
                        placeholder: "打码量"
                    },
                    model: {
                        value: t.betAmount,
                        callback: function(a) {
                            t.betAmount = a
                        },
                        expression: "betAmount"
                    }
                })], 1)], 1)]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "0.2rem",
                        background: "#f8f8f8",
                        width: "100wh"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("取款金额")]), t._v(" "), e("div", [e("van-cell-group", [e("van-field", {
                    attrs: {
                        type: "text",
                        placeholder: "请输入取款金额"
                    },
                    scopedSlots: t._u([{
                        key: "button",
                        fn: function() {
                            return [e("van-button", {
                                attrs: {
                                    size: "mini",
                                    type: "info"
                                },
                                on: {
                                    click: function(a) {
                                        return t.bigMey(t.$store.state.userInfo.balance)
                                    }
                                }
                            },
                            [t._v("最大金额")])]
                        },
                        proxy: !0
                    }], null, !1, 2903943802),
                    model: {
                        value: t.amount,
                        callback: function(a) {
                            t.amount = a
                        },
                        expression: "amount"
                    }
                })], 1)], 1)]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "0.2rem",
                        background: "#f8f8f8",
                        width: "100wh"
                    }
                }), t._v(" "), e("div", {
                    staticClass: "hgs"
                },
                [e("div", {
                    staticClass: "nams"
                },
                [t._v("支付密码")]), t._v(" "), e("div", [e("van-cell-group", [e("van-field", {
                    attrs: {
                        autocomplete: "new-password",
                        type: "password",
                        placeholder: "请输入支付密码"
                    },
                    model: {
                        value: t.password,
                        callback: function(a) {
                            t.password = a
                        },
                        expression: "password"
                    }
                })], 1)], 1)]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "0.2rem",
                        background: "#f8f8f8",
                        width: "100wh"
                    }
                })]) : t._e(), t._v(" "), 2 == t.activeName ? e("div", {
                    staticStyle: {
                        margin: "0 auto",
                        width: "86%"
                    }
                },
                [e("van-button", {
                    staticStyle: {
                        "margin-top": "20px",
                        width: "100%"
                    },
                    attrs: {
                        type: "info"
                    },
                    on: {
                        click: t.withdraw
                    }
                },
                [t._v("立即取款")]), t._v(" "), e("div", {
                    staticClass: "textcns",
                    staticStyle: {
                        "text-align": "center",
                        color: "#999",
                        padding: "10px 0"
                    }
                },
                [t._v("取款遇到问题？联系 "), e("span", {
                    staticStyle: {
                        color: "#cf866b",
                        display: "inline-block",
                        margin: "0 6px"
                    },
                    on: {
                        click: t.$parent.openKefu
                    }
                },
                [t._v("人工客服")]), t._v(" 解决")])], 1) : t._e(), t._v(" "), 1 == t.activeName ? e("div", {
                    staticStyle: {
                        margin: "0 auto",
                        width: "86%"
                    }
                },
                [e("van-button", {
                    staticStyle: {
                        "margin-top": "20px",
                        width: "100%"
                    },
                    attrs: {
                        type: "info"
                    },
                    on: {
                        click: t.withdraw1
                    }
                },
                [t._v("立即取款")]), t._v(" "), e("div", {
                    staticClass: "textcns",
                    staticStyle: {
                        "text-align": "center",
                        color: "#999",
                        padding: "10px 0"
                    }
                },
                [t._v("取款遇到问题？联系 "), e("span", {
                    staticStyle: {
                        color: "#cf866b",
                        display: "inline-block",
                        margin: "0 6px"
                    },
                    on: {
                        click: t.$parent.openKefu
                    }
                },
                [t._v("人工客服")]), t._v(" 解决")])], 1) : t._e(), t._v(" "), 2 == t.activeName && t.show ? e("van-popup", {
                    staticClass: "card",
                    style: {
                        height: "70%",
                        background: "#f8f8f8"
                    },
                    attrs: {
                        position: "bottom"
                    },
                    model: {
                        value: t.show,
                        callback: function(a) {
                            t.show = a
                        },
                        expression: "show"
                    }
                },
                [e("div", {
                    staticClass: "poptit"
                },
                [t._v("请选择银行卡")]), t._v(" "), t._l(t.usercardLis,
                function(a, i) {
                    return e("div", {
                        key: i,
                        staticClass: "lis",
                        on: {
                            click: function(e) {
                                return t.changApiType(a)
                            }
                        }
                    },
                    [e("img", {
                        staticClass: "lefs",
                        attrs: {
                            src: a.ico,
                            alt: ""
                        }
                    }), t._v(" "), e("div", {
                        staticClass: "cest"
                    },
                    [e("div", {
                        staticClass: "type"
                    },
                    [t._v(t._s(a.bank))]), t._v(" "), e("div", {
                        staticClass: "type"
                    },
                    [t._v(t._s(a.bank_owner))]), t._v(" "), e("div", {
                        staticClass: "num"
                    },
                    [e("span", [t._v("****")]), e("span", [t._v("****")]), e("span", [t._v("****")]), e("span", [t._v(t._s(a.bank_no.substr( - 4)))])])])])
                })], 2) : t._e(), t._v(" "), 1 == t.activeName && t.show ? e("van-popup", {
                    staticClass: "card",
                    style: {
                        height: "70%",
                        background: "#f8f8f8"
                    },
                    attrs: {
                        position: "bottom"
                    },
                    model: {
                        value: t.show,
                        callback: function(a) {
                            t.show = a
                        },
                        expression: "show"
                    }
                },
                [e("div", {
                    staticClass: "poptit"
                },
                [t._v("请选择USDT地址")]), t._v(" "), t._l(t.usdssLis,
                function(a, i) {
                    return e("div", {
                        key: i,
                        staticClass: "lis",
                        on: {
                            click: function(e) {
                                return t.changApiType(a)
                            }
                        }
                    },
                    [e("img", {
                        staticClass: "lefs",
                        attrs: {
                            src: "/static/image/1595237922936176.png",
                            alt: ""
                        }
                    }), t._v(" "), e("div", {
                        staticClass: "cest"
                    },
                    [e("div", {
                        staticClass: "type"
                    },
                    [t._v(t._s(a.bank) + "-" + t._s(a.bank_owner))]), t._v(" "), e("div", {
                        staticClass: "num"
                    },
                    [e("span", [t._v("****")]), e("span", [t._v("****")]), e("span", [t._v("****")]), e("span", [t._v(t._s(a.bank_no.substr( - 4)))])])])])
                })], 2) : t._e()], 1)
            },
            staticRenderFns: [function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "top"
                },
                [a("img", {
                    attrs: {
                        src: "/static/image/qianbao123.png",
                        alt: ""
                    }
                }), this._v("中心钱包")])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "top"
                },
                [a("img", {
                    attrs: {
                        src: "/static/image/qianbao123.png",
                        alt: ""
                    }
                }), this._v("游戏钱包")])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "num"
                },
                [a("img", {
                    attrs: {
                        src: "/static/image/xiangshang.png",
                        alt: ""
                    }
                })])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "num"
                },
                [a("img", {
                    attrs: {
                        src: "/static/image/xiangxia.png",
                        alt: ""
                    }
                })])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", [a("div", {
                    staticStyle: {
                        color: "#cf866b",
                        height: "30px",
                        "line-height": "30px",
                        "text-align": "center"
                    }
                },
                [this._v("+添加银行卡")])])
            }]
        };
        var Wt = e("VU/8")(Ht, Qt, !1,
        function(t) {
            e("7ZDU")
        },
        "data-v-6a771a36", null).exports,
        Kt = {
            name: "transfer",
            data: function() {
                return {
                    nshow: !0,
                    balancelist: [],
                    openInfo: {},
                    amount: null,
                    payType: 0,
                    openShow: !1,
                    daoTime: null,
                    showLis: 4,
                    show: !1,
                    type: "sourcetype",
                    sourcetype: {
                        platname: "userbalance",
                        name: "平台钱包"
                    },
                    targettype: {}
                }
            },
            created: function() {
                var t = this;
                t.getbalancelist(),
                t.$parent.getUserInfoShowLoding(),
                t.daoTime = setInterval(function() {
                    t.getbalancelistNoLoding()
                },
                1500)
            },
            methods: {
                bigMey: function() {
                    "userbalance" == this.sourcetype.platname ? this.amount = this.$store.state.userInfo.balance: this.amount = 1 * this.sourcetype.balance
                },
                changShow: function(t) {
                    this.type = t,
                    this.show = !0
                },
                changApiType: function(t, a) {
                    this[t] = a,
                    this.show = !1,
                    "sourcetype" == t && (this.amount = null)
                },
                changShowLis: function(t) {
                    this.showLis = t
                },
                transall: function() {
                    var t = this;
                    t.$parent.showLoading(),
                    t.$apiFun.post("/api/transall", {}).then(function(a) {
                        t.showTost(1, a.message),
                        t.getbalancelist(),
                        t.refreshusermoney(),
                        t.$parent.hideLoading()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    })
                },
                btnOk: function() {
                    var t = this;
                    if (null != t.amount && "" != t.amount) if ("userbalance" == t.sourcetype.platname || "userbalance" == t.targettype.platname) {
                        var a = {
                            amount: t.amount,
                            sourcetype: t.sourcetype.platname,
                            targettype: t.targettype.platname
                        };
                        t.showLoading(),
                        t.$apiFun.post("/api/transfer", a).then(function(a) {
                            t.showTost(1, a.message),
                            200 === a.code ? (t.refreshusermoney(), t.getbalancelist()) : t.hideLoading()
                        }).
                        catch(function(a) {
                            t.$parent.hideLoading()
                        })
                    } else t.showTost(0, "场馆内钱包不支持互转");
                    else t.showTost(0, "请输入操作金额！")
                },
                isOk: function() {
                    var t = this,
                    a = "",
                    e = "";
                    0 == t.payType ? (a = "userbalance", e = t.openInfo.platname) : (a = t.openInfo.platname, e = "userbalance");
                    var i = {
                        amount: t.amount,
                        sourcetype: a,
                        targettype: e
                    };
                    null != t.amount ? (t.closeCv(), t.showLoading(), t.$apiFun.post("/api/transfer", i).then(function(a) {
                        t.showTost(1, a.message),
                        200 === a.code ? (t.refreshusermoney(), t.getbalancelist()) : t.hideLoading()
                    })) : t.showTost(0, "请输入操作金额！")
                },
                closeCv: function() {
                    this.openInfo = {},
                    this.amount = null,
                    this.openShow = !1
                },
                refreshusermoney: function() {
                    var t = this;
                    t.$apiFun.post("/api/refreshusermoney", {}).then(function(a) {
                        t.hideLoading(),
                        200 == a.code && (localStorage.setItem("userInfo", n()(a.data)), t.$store.commit("changUserInfo"))
                    })
                },
                getBalances: function() {
                    var t = this;
                    t.showLoading(),
                    t.getbalancelist(),
                    t.$apiFun.post("/api/balance", {}).then(function(a) {
                        if (200 == a.code) {
                            var e = JSON.parse(localStorage.getItem("userInfo"));
                            e.balance = a.data.balance,
                            e.gameblance = a.data.gameblance,
                            localStorage.setItem("userInfo", n()(e)),
                            t.$store.commit("changUserInfo")
                        }
                        t.hideLoading()
                    }).
                    catch(function(a) {
                        t.hideLoading()
                    })
                },
                changeTasfer: function() {
                    var t = this;
                    t.$parent.showLoading();
                    var a = JSON.parse(localStorage.getItem("userInfo")),
                    e = a.transferstatus ? 0 : 1;
                    t.$apiFun.post("/api/uptransferstatus", {
                        transferstatus: e
                    }).then(function(i) {
                        200 != i.code && t.$parent.showTost(0, i.message),
                        200 == i.code && (a.transferstatus = e, localStorage.setItem("userInfo", n()(a)), t.$store.commit("changUserInfo"), t.$parent.showTost(1, "操作成功！")),
                        t.$parent.hideLoading()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    })
                },
                changVal: function(t) {
                    1 != this.$store.state.userInfo.transferstatus && (this.openInfo = t, this.openShow = !0, this.amount = null)
                },
                close: function() {
                    that.openInfo = {},
                    that.openShow = !1,
                    that.amount = null
                },
                getbalancelist: function() {
                    var t = this;
                    t.$parent.showLoading(),
                    t.$apiFun.post("/api/balancelist", {}).then(function(a) {
                        if (200 !== a.code && t.$parent.showTost(0, a.message), 200 === a.code) {
                            t.balancelist = a.data;
                            var e = a.data;
                            e.unshift({
                                platname: "userbalance",
                                name: "平台钱包"
                            }),
                            t.balancelist = e,
                            t.targettype = e[1]
                        }
                        t.$parent.hideLoading()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    })
                },
                getbalancelistNoLoding: function() {
                    var t = this;
                    t.$apiFun.post("/api/balancelist", {}).then(function(a) {
                        if (200 !== a.code && t.$parent.showTost(0, a.message), 200 === a.code) {
                            t.balancelist = a.data;
                            var e = a.data;
                            e.unshift({
                                platname: "userbalance",
                                name: "平台钱包"
                            }),
                            t.balancelist = e
                        }
                    }).
                    catch(function(t) {})
                },
                showLoading: function() {
                    this.$parent.showLoading()
                },
                hideLoading: function() {
                    this.$parent.hideLoading()
                },
                openKefu: function() {
                    this.$parent.openKefu()
                },
                showTost: function(t, a) {
                    this.$parent.showTost(t, a)
                }
            },
            mounted: function() {},
            updated: function() {},
            beforeDestroy: function() {
                this.daoTime && clearInterval(this.daoTime),
                this.daoTime = null
            }
        },
        Zt = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticClass: "sdg sdgg stddss",
                    staticStyle: {
                        width: "100%",
                        "min-height": "100vh",
                        "background-color": "#f1f1f1",
                        "padding-bottom": "50px"
                    }
                },
                [e("van-nav-bar", {
                    staticStyle: {
                        position: "fixed",
                        top: "0",
                        left: "0",
                        width: "100%",
                        "background-color": "#ede9e7",
                        "z-index": "222"
                    },
                    attrs: {
                        title: "转账",
                        "left-arrow": ""
                    },
                    on: {
                        "click-left": function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        height: "46px"
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        background: "#fff",
                        "box-sizing": "border-box",
                        padding: "0 20px"
                    }
                },
                [e("div", {
                    staticClass: "qibao"
                },
                [e("div", {
                    staticClass: "fes"
                },
                [t._v("钱包金额")]), t._v(" "), e("div", {
                    staticClass: "imgs"
                },
                [e("img", {
                    attrs: {
                        src: "/static/image/iconRefresh.5b108ae65439270527aeee8ac17c2aca.png",
                        alt: ""
                    },
                    on: {
                        click: function(a) {
                            return t.$parent.getUserInfoShowLoding()
                        }
                    }
                })]), t._v(" "), 1 == t.$store.state.userInfo.transferstatus ? e("div", {
                    staticClass: "btns",
                    on: {
                        click: t.transall
                    }
                },
                [t._v("一键回收")]) : t._v(" ")]), t._v(" "), e("div", {
                    staticClass: "mesg"
                },
                [e("div", {
                    staticClass: "bosgf"
                },
                [t._m(0), t._v(" "), e("div", {
                    staticClass: "bots"
                },
                [e("span", [t._v("￥")]), t._v(t._s(t.$store.state.userInfo.balance))])]), t._v(" ")]), t._v(" "), t.balancelist.length ? e("div", {
                    staticClass: "gameBox"
                },
                [t._l(t.balancelist,
                function(a, i) {
                    return i < t.showLis && 0 != i ? e("div", {
                        key: i,
                        staticClass: "lis"
                    },
                    [e("div", {
                        staticClass: "name"
                    },
                    [t._v(t._s(a.name))]), t._v(" "), e("div", {
                        staticClass: "num"
                    },
                    [t._v(t._s(a.balance)),e("img", {
                    staticClass: "shua",
                    staticStyle: {
                        width: "0.35rem",
						"margin-left": "0.2rem"
                    },					
                    attrs: {
                        src: "/static/image/iconRefresh.5b108ae65439270527aeee8ac17c2aca.png",
                        alt: ""
                    },					
                    on: {
                        click: function() {
                            return t.$parent.userapimoney(a.platname)
                        }
                    }
                })])]) : t._e()
                }), t._v(" "), 4 != t.showLis ? e("div", {
                    staticClass: "lis",
                    on: {
                        click: function(a) {
                            return t.changShowLis(4)
                        }
                    }
                },
                [e("div", {
                    staticClass: "name"
                },
                [t._v("收起")]), t._v(" "), t._m(2)]) : t._e(), t._v(" "), 4 == t.showLis ? e("div", {
                    staticClass: "lis",
                    on: {
                        click: function(a) {
                            return t.changShowLis(t.balancelist.length)
                        }
                    }
                },
                [e("div", {
                    staticClass: "name"
                },
                [t._v("展开")]), t._v(" "), t._m(3)]) : t._e()], 2) : t._e()]), t._v(" "), e("div", {
                    staticClass: "mianzhuan"
                },
                [e("div", {
                    staticClass: "lfs"
                },
                [t._v("自动免转")]), t._v(" "), e("div", {
                    staticClass: "ces"
                },
                [t._v("开启后余额自动转入游戏场馆")]), t._v(" "), e("van-switch", {
                    attrs: {
                        "active-value": 1,
                        "inactive-value": 0,
                        size: "24px"
                    },
                    on: {
                        change: function(a) {
                            return t.changeTasfer()
                        }
                    },
                    model: {
                        value: t.$store.state.userInfo.transferstatus,
                        callback: function(a) {
                            t.$set(t.$store.state.userInfo, "transferstatus", a)
                        },
                        expression: "$store.state.userInfo.transferstatus"
                    }
                })], 1), t._v(" "), 0 == t.$store.state.userInfo.transferstatus ? e("div", {
                    staticClass: "zhuanzang"
                },
                [e("div", {
                    staticClass: "tit"
                },
                [e("div", {
                    staticClass: "lesg",
                    on: {
                        click: function(a) {
                            return t.changShow("sourcetype")
                        }
                    }
                },
                [t._v(t._s(t.sourcetype.name) + " "), e("span", [t._v(">")])]), t._v(" "), e("img", {
                    attrs: {
                        src: "/static/image/iconTransfer.png",
                        alt: ""
                    }
                }), t._v(" "), e("div", {
                    staticClass: "lesg",
                    on: {
                        click: function(a) {
                            return t.changShow("targettype")
                        }
                    }
                },
                [t._v(t._s(t.targettype.name) + " "), e("span", [t._v(">")])])]), t._v(" "), e("div", {
                    staticStyle: {
                        padding: "0.2rem 0",
                        "font-size": "0.24rem",
                        color: "#a5a9b3"
                    }
                },
                [t._v("场馆内钱包不支持互转")]), t._v(" "), e("van-cell-group", [e("van-field", {
                    attrs: {
                        label: "￥",
                        type: "text",
                        placeholder: "请输入转账金额"
                    },
                    scopedSlots: t._u([{
                        key: "button",
                        fn: function() {
                            return [e("van-button", {
                                attrs: {
                                    size: "mini",
                                    type: "info"
                                },
                                on: {
                                    click: t.bigMey
                                }
                            },
                            [t._v("最大金额")])]
                        },
                        proxy: !0
                    }], null, !1, 1019065511),
                    model: {
                        value: t.amount,
                        callback: function(a) {
                            t.amount = a
                        },
                        expression: "amount"
                    }
                })], 1)], 1) : t._e(), t._v(" "), e("div", {
                    staticStyle: {
                        margin: "0 auto",
                        width: "86%"
                    }
                },
                [e("van-button", {
                    staticStyle: {
                        "margin-top": "20px",
                        width: "100%"
                    },
                    attrs: {
                        type: "info"
                    },
                    on: {
                        click: t.btnOk
                    }
                },
                [t._v("立即转账")]), t._v(" "), e("div", {
                    staticClass: "textcns",
                    staticStyle: {
                        "text-align": "center",
                        color: "#999",
                        padding: "10px 0"
                    }
                },
                [t._v("转账遇到问题？联系 "), e("span", {
                    staticStyle: {
                        color: "##158bf4",
                        display: "inline-block",
                        margin: "0 6px"
                    },
                    on: {
                        click: t.$parent.openKefu
                    }
                },
                [t._v("人工客服")]), t._v(" 解决")])], 1), t._v(" "), "sourcetype" == t.type && t.show ? e("van-popup", {
                    staticClass: "card",
                    style: {
                        height: "70%",
                        background: "#f8f8f8"
                    },
                    attrs: {
                        position: "bottom"
                    },
                    model: {
                        value: t.show,
                        callback: function(a) {
                            t.show = a
                        },
                        expression: "show"
                    }
                },
                [e("div", {
                    staticClass: "poptit"
                },
                [t._v("选择钱包")]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "0.2rem"
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        background: "#fff",
                        width: "100%",
                        margin: "0 auto",
                        padding: "0 20px",
                        "box-sizing": "border-box"
                    }
                },
                t._l(t.balancelist,
                function(a, i) {
                    return e("div", {
                        key: i,
                        staticClass: "lis",
                        on: {
                            click: function(e) {
                                return t.changApiType("sourcetype", a)
                            }
                        }
                    },
                    [e("div", [t._v(t._s(a.name))]), t._v(" "), t.sourcetype.name == a.name ? e("img", {
                        attrs: {
                            src: "/static/image/icon_chose.28d0a1732f077f8062a64082a086ebf2.png",
                            alt: ""
                        }
                    }) : t._e()])
                }), 0)]) : t._e(), t._v(" "), "targettype" == t.type && t.show ? e("van-popup", {
                    staticClass: "card",
                    style: {
                        height: "70%",
                        background: "#f8f8f8"
                    },
                    attrs: {
                        position: "bottom"
                    },
                    model: {
                        value: t.show,
                        callback: function(a) {
                            t.show = a
                        },
                        expression: "show"
                    }
                },
                [e("div", {
                    staticClass: "poptit"
                },
                [t._v("选择钱包")]), t._v(" "), e("div", {
                    staticStyle: {
                        height: "0.2rem"
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        background: "#fff",
                        width: "100%",
                        margin: "0 auto",
                        padding: "0 20px",
                        "box-sizing": "border-box"
                    }
                },
                t._l(t.balancelist,
                function(a, i) {
                    return e("div", {
                        key: i,
                        staticClass: "lis",
                        on: {
                            click: function(e) {
                                return t.changApiType("targettype", a)
                            }
                        }
                    },
                    [e("div", [t._v(t._s(a.name))]), t._v(" "), t.targettype.name == a.name ? e("img", {
                        attrs: {
                            src: "/static/image/icon_chose.28d0a1732f077f8062a64082a086ebf2.png",
                            alt: ""
                        }
                    }) : t._e()])
                }), 0)]) : t._e()], 1)
            },
            staticRenderFns: [function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "top"
                },
                [a("img", {
                    attrs: {
                        src: "/static/image/qianbao123.png",
                        alt: ""
                    }
                }), this._v("中心钱包")])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "top"
                },
                [a("img", {
                    attrs: {
                        src: "/static/image/qianbao123.png",
                        alt: ""
                    }
                }), this._v("游戏钱包")])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "num"
                },
                [a("img", {
                    attrs: {
                        src: "/static/image/xiangshang.png",
                        alt: ""
                    }
                })])
            },
            function() {
                var t = this.$createElement,
                a = this._self._c || t;
                return a("div", {
                    staticClass: "num"
                },
                [a("img", {
                    attrs: {
                        src: "/static/image/xiangxia.png",
                        alt: ""
                    }
                })])
            }]
        };
        var ta = e("VU/8")(Kt, Zt, !1,
        function(t) {
            e("G8D4")
        },
        "data-v-aa21eb5e", null).exports,
        aa = {
            name: "concise",
            data: function() {
                return {
                    gamecode: "obgdy",
                    obgdyList: [],
                    ppList: [],
                    fgdzList: [],
                    aeList: []
                }
            },
            created: function() {
                var t = this.$route.query;
                t.type && (this.gamecode = t.type),
                console.log(t),
                this.gamelistBycode()
            },
            methods: {
                handleClick: function() {
                    this.gamelistBycode()
                },
                gamelistBycode: function() {
                    var t = this,
                    a = t.gamecode + "List";
                    t[a].length > 0 || (t.$parent.showLoading(), t.$apiFun.post("/api/gamelistBycode", {
                        gamecode: t.gamecode
                    }).then(function(e) {
                        console.log(e),
                        200 != e.code && t.$parent.showTost(0, e.message),
                        200 == e.code && (t[a] = e.data),
                        t.$parent.hideLoading()
                    }).
                    catch(function(a) {
                        t.$parent.hideLoading()
                    }))
                }
            },
            mounted: function() {},
            updated: function() {},
            beforeDestroy: function() {},
            watch: {
                $route: {
                    immediate: !0,
                    handler: function() {
                        var t = this.$route.query;
                        t.type && (this.gamecode = t.type, this.gamelistBycode())
                    }
                }
            }
        },
        ea = {
            render: function() {
                var t = this,
                a = t.$createElement,
                e = t._self._c || a;
                return e("div", {
                    staticStyle: {
                        width: "100%",
                        "min-height": "100vh",
                        background: "rgb(237, 241, 255"
                    }
                },
                [e("van-nav-bar", {
                    staticStyle: {
                        position: "fixed",
                        top: "0",
                        left: "0",
                        width: "100%",
                        "background-color": "#ede9e7"
                    },
                    attrs: {
                        title: "",
                        "left-arrow": ""
                    },
                    on: {
                        "click-left": function(a) {
                            return t.$router.back()
                        }
                    }
                }), t._v(" "), e("div", {
                    staticStyle: {
                        height: "46px"
                    }
                }), t._v(" "), e("img", {
                    staticStyle: {
                        width: "100%",
                        "border-radius": "20px"
                    },
                    attrs: {
                        src: "/static/image/73b07f2.jpg",
                        alt: ""
                    }
                }), t._v(" "), e("van-tabs", {
                    staticClass: "gameBox",
                    on: {
                        change: t.handleClick
                    },
                    model: {
                        value: t.gamecode,
                        callback: function(a) {
                            t.gamecode = a
                        },
                        expression: "gamecode"
                    }
                },
                [e("van-tab", {
                    attrs: {
                        title: "OB电子",
                        name: "obgdy"
                    }
                },
                [e("div", {
                    staticClass: "gameList"
                },
                t._l(t.obgdyList,
                function(a, i) {
                    return e("div", {
                        key: i,
                        staticClass: "gameLis",
                        on: {
                            click: function(e) {
                                return t.$parent.openGamePage(a.catecode, a.gamecode, "")
                            }
                        }
                    },
                    [e("img", {
                        attrs: {
                            src: a.gamepic,
                            alt: ""
                        }
                    }), t._v(" "), e("p", [t._v(t._s(a.gamename))])])
                }), 0)]), t._v(" "), e("van-tab", {
                    attrs: {
                        title: "FG电子",
                        name: "fgdz"
                    }
                },
                [e("div", {
                    staticClass: "gameList"
                },
                t._l(t.fgdzList,
                function(a, i) {
                    return e("div", {
                        key: i,
                        staticClass: "gameLis",
                        on: {
                            click: function(e) {
                                return t.$parent.openGamePage(a.catecode, a.gamecode, "")
                            }
                        }
                    },
                    [e("img", {
                        attrs: {
                            src: a.gamepic,
                            alt: ""
                        }
                    }), t._v(" "), e("p", [t._v(t._s(a.gamename))])])
                }), 0)]), t._v(" "), e("van-tab", {
                    attrs: {
                        title: "PP电子",
                        name: "pp"
                    }
                },
                [e("div", {
                    staticClass: "gameList"
                },
                t._l(t.ppList,
                function(a, i) {
                    return e("div", {
                        key: i,
                        staticClass: "gameLis",
                        on: {
                            click: function(e) {
                                return t.$parent.openGamePage(a.catecode, a.gamecode, "")
                            }
                        }
                    },
                    [e("img", {
                        attrs: {
                            src: a.gamepic,
                            alt: ""
                        }
                    }), t._v(" "), e("p", [t._v(t._s(a.gamename))])])
                }), 0)]), t._v(" "), e("van-tab", {
                    attrs: {
                        title: "AE电子",
                        name: "ae"
                    }
                },
                [e("div", {
                    staticClass: "gameList"
                },
                t._l(t.aeList,
                function(a, i) {
                    return e("div", {
                        key: i,
                        staticClass: "gameLis",
                        on: {
                            click: function(e) {
                                return t.$parent.openGamePage(a.catecode, a.gamecode, "")
                            }
                        }
                    },
                    [e("img", {
                        attrs: {
                            src: a.gamepic,
                            alt: ""
                        }
                    }), t._v(" "), e("p", [t._v(t._s(a.gamename))])])
                }), 0)])], 1)], 1)
            },
            staticRenderFns: []
        };
        var ia = e("VU/8")(aa, ea, !1,
        function(t) {
            e("LQ/E")
        },
        "data-v-215752e0", null).exports;
        i.a.use(l.a);
        var sa = new l.a({
            mode: "hash",
            routes: [{
                path: "/",
                name: "Main",
                component: g,
                children: [{
                    path: "/",
                    name: "index",
                    component: m,
                    meta: {
                        keepAlive: !0,
                        useCatch: !1
                    }
                },
                {
                    path: "/hongbao",
                    name: "hongbao",
                    component: A
                },
                {
                    path: "/activity",
                    name: "activity",
                    component: U,
                    meta: {
                        keepAlive: !0,
                        useCatch: !1
                    }
                },
                {
                    path: "/zhanzhu",
                    name: "zhanzhu",
                    component: N,
                    meta: {
                        keepAlive: !0,
                        useCatch: !1
                    }
                },
                {
                    path: "/mine",
                    name: "mine",
                    component: F,
                    meta: {
                        keepAlive: !0,
                        useCatch: !1,
                        requireAuth: !0
                    }
                },
                {
                    path: "/app",
                    name: "app",
                    component: w,
                    meta: {
                        keepAlive: !0,
                        useCatch: !1,
                        requireAuth: !0
                    }
                },
                {
                    path: "/kefu",
                    name: "kefu",
                    component: k
                }]
            },
            {
                path: "/login",
                name: "login",
                component: V
            },
            {
                path: "/gamePage",
                name: "gamePage",
                component: S
            },
            {
                path: "/activityInfo",
                name: "activityInfo",
                component: G
            },
            {
                path: "/zhanzhuye",
                name: "zhanzhuye",
                component: J
            },
            {
                path: "/vip",
                name: "vip",
                component: Q,
                meta: {
                    keepAlive: !0,
                    useCatch: !1
                }
            },
            {
                path: "/applyagent",
                name: "applyagent",
                component: K
            },
            {
                path: "/boutBallBet",
                name: "boutBallBet",
                component: tt
            },
            {
                path: "/boutBallBetInfo",
                name: "boutBallBetInfo",
                component: et
            },
            {
                path: "/message",
                name: "message",
                component: nt,
                meta: {
                    requireAuth: !0
                }
            },
            {
                path: "/fanshui",
                name: "fanshui",
                component: ct,
                meta: {
                    requireAuth: !0
                }
            },
            {
                path: "/userInfo",
                name: "userInfo",
                component: ut,
                meta: {
                    requireAuth: !0
                }
            },
            {
                path: "/userCent",
                name: "userCent",
                component: gt,
                meta: {
                    requireAuth: !0
                }
            },
            {
                path: "/wallet",
                name: "wallet",
                component: _t,
                meta: {
                    requireAuth: !0
                }
            },
            {
                path: "/addBankCard",
                name: "addBankCard",
                component: Ct,
                meta: {
                    requireAuth: !0
                }
            },
            {
                path: "/addUsdtCard",
                name: "addUsdtCard",
                component: bt,
                meta: {
                    requireAuth: !0
                }
            },
            {
                path: "/usdtmore",
                name: "usdtmore",
                component: xt
            },
            {
                path: "/password",
                name: "password",
                component: It,
                meta: {
                    requireAuth: !0
                }
            },
            {
                path: "/welfare",
                name: "welfare",
                component: Tt,
                meta: {
                    requireAuth: !0
                }
            },
            {
                path: "/betRecord",
                name: "betRecord",
                component: Dt,
                meta: {
                    requireAuth: !0
                }
            },
            {
                path: "/activityRecord",
                name: "activityRecord",
                component: Pt,
                meta: {
                    requireAuth: !0
                }
            },
            {
                path: "/transRecord",
                name: "transRecord",
                component: Ft,
                meta: {
                    requireAuth: !0
                }
            },
            {
                path: "/money",
                name: "money",
                component: Vt,
                meta: {
                    requireAuth: !0
                }
            },
            {
                path: "/recharge",
                name: "recharge",
                component: Gt,
                meta: {
                    requireAuth: !0,
                    keepAlive: !0,
                    useCatch: !1
                }
            },
            {
                path: "/payInfo",
                name: "payInfo",
                component: Xt
            },
            {
                path: "/concise",
                name: "concise",
                component: ia,
                meta: {
                    keepAlive: !0,
                    useCatch: !1
                }
            },
            {
                path: "/withdrawal",
                name: "withdrawal",
                component: Wt,
                meta: {
                    requireAuth: !0
                }
            },
            {
                path: "/transfer",
                name: "transfer",
                component: ta,
                meta: {
                    requireAuth: !0
                }
            },
            {
                path: "*",
                redirect: "/"
            }]
        }),
        na = e("//Fk"),
        oa = e.n(na),
        ra = e("mtWM"),
        ca = e.n(ra),
        la = e("Fd2+"),
        da = "http://127.0.2.6";
        sessionStorage.setItem("baseURL", da);
        var va = {
            baseURL: da,
            timeout: 3e4
        },
        pa = ca.a.create(va);
        pa.interceptors.request.use(function(t) {
            var a = sessionStorage.getItem("token") ? sessionStorage.getItem("token") : "";
            return t.headers.Authorization = "Bearer " + a,
            t
        },
        function(t) {
            return oa.a.reject(t)
        }),
        pa.interceptors.response.use(function(t) {
            return 401 === t.data.code && la.a.alert({
                title: "认证失败",
                message: "您的账号登陆过期，请重新登陆"
            }).then(function() {
                localStorage.clear(),
                sessionStorage.clear(),
                sa.replace("/login")
            }),
            t
        },
        function(t) {
            return oa.a.reject(t)
        });
        var ua = {
            get: function() {
                var t = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : "",
                a = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : {};
                return new oa.a(function(e, i) {
                    pa({
                        url: t,
                        params: a,
                        headers: {
                            "Content-Type": "application/json;charset=UTF-8"
                        },
                        method: "GET"
                    }).then(function(t) {
                        return e(t.data),
                        t
                    }).
                    catch(function(t) {
                        i(t)
                    })
                })
            },
            post: function() {
                var t = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : "",
                a = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : {};
                return "/api/register" != t && "/api/login_pc" != t || sessionStorage.setItem("baseURL", da),
                new oa.a(function(e, i) {
                    pa({
                        url: t,
                        data: a,
                        headers: {
                            "Content-Type": "application/json;charset=UTF-8"
                        },
                        method: "POST"
                    }).then(function(t) {
                        return e(t.data),
                        t
                    }).
                    catch(function(t) {
                        i(t)
                    })
                })
            }
        },
        fa = {
            get: function(t, a) {
                return ua.get(t, a)
            },
            post: function(t, a) {
                return ua.post(t, a)
            },
            login: function(t) {
                var a = sessionStorage.getItem("baseURL") || "";
                return a || sessionStorage.setItem("baseURL", a),
                ua.post("/api/login_pc", t)
            },
            register: function(t) {
                var a = sessionStorage.getItem("baseURL") || "";
                return a || sessionStorage.setItem("baseURL", a),
                ua.post("/api/register", t)
            }
        },
        ga = fa,
        ha = e("NYxO");
        i.a.use(ha.a);
        var _a = JSON.parse(localStorage.getItem("userInfo")) || {},
        ma = sessionStorage.getItem("token") || "",
        ba = JSON.parse(localStorage.getItem("appInfo")) || {},
        ya = ma && localStorage.getItem("messageNum") || 0,
        wa = new ha.a.Store({
            state: {
                userInfo: _a,
                token: ma,
                messageNum: ya,
                appInfo: ba,
                bannerList: [],
                realbetList: [],
                jokerList: [],
                gamingList: [],
                sportList: [],
                lotteryList: [],
                conciseList: []
            },
            getters: {},
            mutations: {
                changGameList: function(t) {
                    var a = localStorage.getItem("bannerList") ? JSON.parse(localStorage.getItem("bannerList")) : [];
                    t.bannerList = a;
                    var e = localStorage.getItem("realbetList") ? JSON.parse(localStorage.getItem("realbetList")) : [];
                    t.realbetList = e;
                    var i = localStorage.getItem("jokerList") ? JSON.parse(localStorage.getItem("jokerList")) : [];
                    t.jokerList = i;
                    var s = localStorage.getItem("gamingList") ? JSON.parse(localStorage.getItem("gamingList")) : [];
                    t.gamingList = s;
                    var n = localStorage.getItem("sportList") ? JSON.parse(localStorage.getItem("sportList")) : [];
                    t.sportList = n;
                    var o = localStorage.getItem("lotteryList") ? JSON.parse(localStorage.getItem("lotteryList")) : [];
                    t.lotteryList = o;
                    var r = localStorage.getItem("conciseList") ? JSON.parse(localStorage.getItem("conciseList")) : [];
                    t.conciseList = r
                },
                changUserInfo: function(t) {
                    var a = localStorage.getItem("userInfo") ? JSON.parse(localStorage.getItem("userInfo")) : {};
                    t.userInfo = a
                },
                changToken: function(t) {
                    t.token = sessionStorage.getItem("token") || ""
                },
                changMessageNum: function(t) {
                    var a = localStorage.getItem("show");
                    t.messageNum = a ? 0 : localStorage.getItem("messageNum")
                },
                changappInfo: function(t) {
                    var a = JSON.parse(localStorage.getItem("appInfo"));
                    t.appInfo = a
                }
            },
            actions: {},
            modules: {}
        });
        e("QKTF"),
        e("4ml/");
        i.a.use(la.b),
        i.a.prototype.$apiFun = ga,
        i.a.config.productionTip = !1,
        sa.afterEach(function(t, a, e) {
            window.scrollTo(0, 0),
            document.querySelector(".index-page") && document.querySelector(".index-page").scrollTo(0, 0)
        }),
        sa.beforeEach(function(t, a, e) {
            sessionStorage.getItem("token") && sessionStorage.getItem("token");
            t.matched.some(function(t) {
                return t.meta.requireAuth
            }) ? sessionStorage.getItem("token") ? e() : e({
                path: "/login",
                query: {
                    redirect: t.fullPath
                }
            }) : e()
        }),
        new i.a({
            el: "#app",
            store: wa,
            router: sa,
            components: {
                App: c
            },
            template: "<App/>"
        })
    },
    QhRG: function(t, a) {},
    blE4: function(t, a) {},
    eEdD: function(t, a) {},
    f0RK: function(t, a) {},
    f3ov: function(t, a) {},
    iMz1: function(t, a) {},
    je0q: function(t, a) {},
    kCIW: function(t, a) {},
    kShl: function(t, a) {},
    mx8y: function(t, a) {},
    nMs0: function(t, a) {},
    oMbg: function(t, a) {},
    "r/mD": function(t, a) {},
    rNsN: function(t, a) {},
    sx3J: function(t, a) {},
    wizW: function(t, a) {},
    xodb: function(t, a) {},
    xpj0: function(t, a) {},
    xv8h: function(t, a) {}
},
["NHnr"]);
//# sourceMappingURL=app.e9e9cc4d80aee2a7b09d.js.map
