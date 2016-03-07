!function(){"use strict";var e="undefined"==typeof window?global:window;if("function"!=typeof e.require){var t={},n={},r={},l={}.hasOwnProperty,a=function(e,t){var n=r[e]||r[e+"/index.js"];return n||e},u=/^\.\.?(\/|$)/,i=function(e,t){for(var n,r=[],l=(u.test(t)?e+"/"+t:t).split("/"),a=0,i=l.length;i>a;a++)n=l[a],".."===n?r.pop():"."!==n&&""!==n&&r.push(n);return r.join("/")},o=function(e){return e.split("/").slice(0,-1).join("/")},c=function(t){return function(n){var r=i(o(t),n);return e.require(r,t)}},f=function(e,t){var r={id:e,exports:{}};return n[e]=r,t(r.exports,c(e),r),r.exports},s=function(e,r){null==r&&(r="/");var u=a(e,r);if(l.call(n,u))return n[u].exports;if(l.call(t,u))return f(u,t[u]);var o=i(u,"./index");if(l.call(n,o))return n[o].exports;if(l.call(t,o))return f(o,t[o]);throw new Error('Cannot find module "'+e+'" from "'+r+'"')};s.alias=function(e,t){r[t]=e},s.register=s.define=function(e,n){if("object"==typeof e)for(var r in e)l.call(e,r)&&s.register(r,e[r]);else t[e]=n},s.list=function(){var e=[];for(var n in t)l.call(t,n)&&e.push(n);return e},s.brunch=!0,s._cache=n,e.require=s}}(),require.register("components/App",function(e,t,n){"use strict";function r(e){return e&&e.__esModule?e:{"default":e}}function l(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function a(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function u(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}Object.defineProperty(e,"__esModule",{value:!0});var i=function(){function e(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}return function(t,n,r){return n&&e(t.prototype,n),r&&e(t,r),t}}(),o=t("react"),c=r(o),f=function(e){function t(){return l(this,t),a(this,Object.getPrototypeOf(t).apply(this,arguments))}return u(t,e),i(t,[{key:"render",value:function(){return c["default"].createElement("div",{id:"content"},c["default"].createElement("p",null,"functional",c["default"].createElement("sup",null,".systems")," is a list of presentations & places on the internet where you can find out more about Maciej Matyjas."),c["default"].createElement("article",null,c["default"].createElement("h3",null,"24 hours of Elixir, caffeine and Slackbots"),c["default"].createElement("ul",null,c["default"].createElement("li",null,c["default"].createElement("a",{href:"http://www.meetup.com/Elixir-London/events/228584240/"},"presented at Elixir London, February 2016")),c["default"].createElement("li",null,c["default"].createElement("a",{href:"http://24-hours-of-elixir.netlify.com/"},"slides")))),c["default"].createElement("article",null,c["default"].createElement("h3",null,"Reviewing Code Reviews"),c["default"].createElement("ul",null,c["default"].createElement("li",null,c["default"].createElement("a",{href:"http://www.meetup.com/london-software-craftsmanship/events/225941774/"},"presented at London Software CraftmanshipCommunity")),c["default"].createElement("li",null,c["default"].createElement("a",{href:"http://hcom-reviewing-code-reviews.netlify.com/"},"slides")),c["default"].createElement("li",null,c["default"].createElement("a",{href:"https://skillsmatter.com/skillscasts/6958-code-reviews-are-fast"},"video!")))),c["default"].createElement("article",null,c["default"].createElement("h3",null,"Other internet places"),c["default"].createElement("ul",null,c["default"].createElement("li",null,c["default"].createElement("a",{href:"http://twitter.com/matyjas"},"@matyjas")),c["default"].createElement("li",null,c["default"].createElement("a",{href:"https://uk.linkedin.com/in/matyjas"},"in/matyjas")),c["default"].createElement("li",null,c["default"].createElement("a",{href:"https://github.com/matyjas"},"github:matyjas")),c["default"].createElement("li",null,c["default"].createElement("a",{href:"https://speakerdeck.com/matyjas"},"slides on SpeakerDeck")),c["default"].createElement("li",null,c["default"].createElement("a",{href:"https://skillsmatter.com/legacy_profile/maciej-matyjas#skillscasts"},"videos on SkillsMatter")),c["default"].createElement("li",null,c["default"].createElement("a",{href:"http://www.slideshare.net/matyjas/presentations"},"slides on SlideShare")))))}}]),t}(c["default"].Component);e["default"]=f}),require.register("components/Counter",function(e,t,n){"use strict";function r(e){return e&&e.__esModule?e:{"default":e}}Object.defineProperty(e,"__esModule",{value:!0});var l=t("react"),a=r(l),u=t("react-redux"),i=function(e){var t=e.count,n=e.onPlusClick,r=e.onMinusClick;return a["default"].createElement("div",null,a["default"].createElement("h2",null,"Redux Counter:"),a["default"].createElement("p",null,a["default"].createElement("button",{onClick:r},"-"),t,a["default"].createElement("button",{onClick:n},"+")))};i.propTypes={count:l.PropTypes.number.isRequired,onPlusClick:l.PropTypes.func.isRequired,onMinusClick:l.PropTypes.func.isRequired};var o=function(e){return{count:e}},c=function(e){return{onPlusClick:function(){return e({type:"INCREMENT"})},onMinusClick:function(){return e({type:"DECREMENT"})}}};e["default"]=(0,u.connect)(o,c)(i)}),require.register("initialize",function(e,t,n){"use strict";function r(e){return e&&e.__esModule?e:{"default":e}}var l=t("react-dom"),a=r(l),u=t("react"),i=r(u),o=t("react-redux"),c=t("redux"),f=t("./reducers"),s=r(f),d=t("components/App"),p=r(d),m=(0,c.createStore)(s["default"]);document.addEventListener("DOMContentLoaded",function(){a["default"].render(i["default"].createElement(o.Provider,{store:m},i["default"].createElement(p["default"],null)),document.querySelector("#app"))})}),require.register("reducers",function(e,t,n){"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e["default"]=function(){var e=arguments.length<=0||void 0===arguments[0]?0:arguments[0],t=arguments[1];switch(t.type){case"INCREMENT":return e+1;case"DECREMENT":return e-1;default:return e}}});