/*! For license information please see 892.js.LICENSE.txt */
(self.webpackChunk_egovernments_digit_ui_core=self.webpackChunk_egovernments_digit_ui_core||[]).push([[892],{2779:(e,t)=>{var o;!function(){"use strict";var n={}.hasOwnProperty;function r(){for(var e=[],t=0;t<arguments.length;t++){var o=arguments[t];if(o){var l=typeof o;if("string"===l||"number"===l)e.push(o);else if(Array.isArray(o)){if(o.length){var i=r.apply(null,o);i&&e.push(i)}}else if("object"===l){if(o.toString!==Object.prototype.toString&&!o.toString.toString().includes("[native code]")){e.push(o.toString());continue}for(var c in o)n.call(o,c)&&o[c]&&e.push(c)}}}return e.join(" ")}e.exports?(r.default=r,e.exports=r):void 0===(o=function(){return r}.apply(t,[]))||(e.exports=o)}()},892:(e,t,o)=>{"use strict";o.r(t),o.d(t,{Tooltip:()=>Te,TooltipProvider:()=>ye,TooltipWrapper:()=>ve,removeStyle:()=>ue});var n=o(2212);const r=Math.min,l=Math.max,i=Math.round,c=Math.floor,s=e=>({x:e,y:e}),a={left:"right",right:"left",bottom:"top",top:"bottom"},u={start:"end",end:"start"};function d(e,t,o){return l(e,r(t,o))}function f(e,t){return"function"==typeof e?e(t):e}function p(e){return e.split("-")[0]}function m(e){return e.split("-")[1]}function y(e){return"x"===e?"y":"x"}function h(e){return"y"===e?"height":"width"}function v(e){return["top","bottom"].includes(p(e))?"y":"x"}function w(e){return y(v(e))}function g(e){return e.replace(/start|end/g,(e=>u[e]))}function b(e){return e.replace(/left|right|bottom|top/g,(e=>a[e]))}function x(e){return"number"!=typeof e?function(e){return{top:0,right:0,bottom:0,left:0,...e}}(e):{top:e,right:e,bottom:e,left:e}}function _(e){return{...e,top:e.y,left:e.x,right:e.x+e.width,bottom:e.y+e.height}}function E(e,t,o){let{reference:n,floating:r}=e;const l=v(t),i=w(t),c=h(i),s=p(t),a="y"===l,u=n.x+n.width/2-r.width/2,d=n.y+n.height/2-r.height/2,f=n[c]/2-r[c]/2;let y;switch(s){case"top":y={x:u,y:n.y-r.height};break;case"bottom":y={x:u,y:n.y+n.height};break;case"right":y={x:n.x+n.width,y:d};break;case"left":y={x:n.x-r.width,y:d};break;default:y={x:n.x,y:n.y}}switch(m(t)){case"start":y[i]-=f*(o&&a?-1:1);break;case"end":y[i]+=f*(o&&a?-1:1)}return y}async function S(e,t){var o;void 0===t&&(t={});const{x:n,y:r,platform:l,rects:i,elements:c,strategy:s}=e,{boundary:a="clippingAncestors",rootBoundary:u="viewport",elementContext:d="floating",altBoundary:p=!1,padding:m=0}=f(t,e),y=x(m),h=c[p?"floating"===d?"reference":"floating":d],v=_(await l.getClippingRect({element:null==(o=await(null==l.isElement?void 0:l.isElement(h)))||o?h:h.contextElement||await(null==l.getDocumentElement?void 0:l.getDocumentElement(c.floating)),boundary:a,rootBoundary:u,strategy:s})),w="floating"===d?{...i.floating,x:n,y:r}:i.reference,g=await(null==l.getOffsetParent?void 0:l.getOffsetParent(c.floating)),b=await(null==l.isElement?void 0:l.isElement(g))&&await(null==l.getScale?void 0:l.getScale(g))||{x:1,y:1},E=_(l.convertOffsetParentRelativeRectToViewportRelativeRect?await l.convertOffsetParentRelativeRectToViewportRelativeRect({rect:w,offsetParent:g,strategy:s}):w);return{top:(v.top-E.top+y.top)/b.y,bottom:(E.bottom-v.bottom+y.bottom)/b.y,left:(v.left-E.left+y.left)/b.x,right:(E.right-v.right+y.right)/b.x}}const T=function(e){return void 0===e&&(e={}),{name:"flip",options:e,async fn(t){var o;const{placement:n,middlewareData:r,rects:l,initialPlacement:i,platform:c,elements:s}=t,{mainAxis:a=!0,crossAxis:u=!0,fallbackPlacements:d,fallbackStrategy:y="bestFit",fallbackAxisSideDirection:v="none",flipAlignment:x=!0,..._}=f(e,t),E=p(n),T=p(i)===i,R=await(null==c.isRTL?void 0:c.isRTL(s.floating)),A=d||(T||!x?[b(i)]:function(e){const t=b(e);return[g(e),t,g(t)]}(i));d||"none"===v||A.push(...function(e,t,o,n){const r=m(e);let l=function(e,t,o){const n=["left","right"],r=["right","left"],l=["top","bottom"],i=["bottom","top"];switch(e){case"top":case"bottom":return o?t?r:n:t?n:r;case"left":case"right":return t?l:i;default:return[]}}(p(e),"start"===o,n);return r&&(l=l.map((e=>e+"-"+r)),t&&(l=l.concat(l.map(g)))),l}(i,x,v,R));const L=[i,...A],k=await S(t,_),O=[];let C=(null==(o=r.flip)?void 0:o.overflows)||[];if(a&&O.push(k[E]),u){const e=function(e,t,o){void 0===o&&(o=!1);const n=m(e),r=w(e),l=h(r);let i="x"===r?n===(o?"end":"start")?"right":"left":"start"===n?"bottom":"top";return t.reference[l]>t.floating[l]&&(i=b(i)),[i,b(i)]}(n,l,R);O.push(k[e[0]],k[e[1]])}if(C=[...C,{placement:n,overflows:O}],!O.every((e=>e<=0))){var N,D;const e=((null==(N=r.flip)?void 0:N.index)||0)+1,t=L[e];if(t)return{data:{index:e,overflows:C},reset:{placement:t}};let o=null==(D=C.filter((e=>e.overflows[0]<=0)).sort(((e,t)=>e.overflows[1]-t.overflows[1]))[0])?void 0:D.placement;if(!o)switch(y){case"bestFit":{var $;const e=null==($=C.map((e=>[e.placement,e.overflows.filter((e=>e>0)).reduce(((e,t)=>e+t),0)])).sort(((e,t)=>e[1]-t[1]))[0])?void 0:$[0];e&&(o=e);break}case"initialPlacement":o=i}if(n!==o)return{reset:{placement:o}}}return{}}}},R=function(e){return void 0===e&&(e=0),{name:"offset",options:e,async fn(t){const{x:o,y:n}=t,r=await async function(e,t){const{placement:o,platform:n,elements:r}=e,l=await(null==n.isRTL?void 0:n.isRTL(r.floating)),i=p(o),c=m(o),s="y"===v(o),a=["left","top"].includes(i)?-1:1,u=l&&s?-1:1,d=f(t,e);let{mainAxis:y,crossAxis:h,alignmentAxis:w}="number"==typeof d?{mainAxis:d,crossAxis:0,alignmentAxis:null}:{mainAxis:0,crossAxis:0,alignmentAxis:null,...d};return c&&"number"==typeof w&&(h="end"===c?-1*w:w),s?{x:h*u,y:y*a}:{x:y*a,y:h*u}}(t,e);return{x:o+r.x,y:n+r.y,data:r}}}},A=function(e){return void 0===e&&(e={}),{name:"shift",options:e,async fn(t){const{x:o,y:n,placement:r}=t,{mainAxis:l=!0,crossAxis:i=!1,limiter:c={fn:e=>{let{x:t,y:o}=e;return{x:t,y:o}}},...s}=f(e,t),a={x:o,y:n},u=await S(t,s),m=v(p(r)),h=y(m);let w=a[h],g=a[m];if(l){const e="y"===h?"bottom":"right";w=d(w+u["y"===h?"top":"left"],w,w-u[e])}if(i){const e="y"===m?"bottom":"right";g=d(g+u["y"===m?"top":"left"],g,g-u[e])}const b=c.fn({...t,[h]:w,[m]:g});return{...b,data:{x:b.x-o,y:b.y-n}}}}};function L(e){return C(e)?(e.nodeName||"").toLowerCase():"#document"}function k(e){var t;return(null==e||null==(t=e.ownerDocument)?void 0:t.defaultView)||window}function O(e){var t;return null==(t=(C(e)?e.ownerDocument:e.document)||window.document)?void 0:t.documentElement}function C(e){return e instanceof Node||e instanceof k(e).Node}function N(e){return e instanceof Element||e instanceof k(e).Element}function D(e){return e instanceof HTMLElement||e instanceof k(e).HTMLElement}function $(e){return"undefined"!=typeof ShadowRoot&&(e instanceof ShadowRoot||e instanceof k(e).ShadowRoot)}function B(e){const{overflow:t,overflowX:o,overflowY:n,display:r}=j(e);return/auto|scroll|overlay|hidden|clip/.test(t+n+o)&&!["inline","contents"].includes(r)}function P(e){return["table","td","th"].includes(L(e))}function H(e){const t=W(),o=j(e);return"none"!==o.transform||"none"!==o.perspective||!!o.containerType&&"normal"!==o.containerType||!t&&!!o.backdropFilter&&"none"!==o.backdropFilter||!t&&!!o.filter&&"none"!==o.filter||["transform","perspective","filter"].some((e=>(o.willChange||"").includes(e)))||["paint","layout","strict","content"].some((e=>(o.contain||"").includes(e)))}function W(){return!("undefined"==typeof CSS||!CSS.supports)&&CSS.supports("-webkit-backdrop-filter","none")}function I(e){return["html","body","#document"].includes(L(e))}function j(e){return k(e).getComputedStyle(e)}function F(e){return N(e)?{scrollLeft:e.scrollLeft,scrollTop:e.scrollTop}:{scrollLeft:e.pageXOffset,scrollTop:e.pageYOffset}}function z(e){if("html"===L(e))return e;const t=e.assignedSlot||e.parentNode||$(e)&&e.host||O(e);return $(t)?t.host:t}function M(e){const t=z(e);return I(t)?e.ownerDocument?e.ownerDocument.body:e.body:D(t)&&B(t)?t:M(t)}function q(e,t){var o;void 0===t&&(t=[]);const n=M(e),r=n===(null==(o=e.ownerDocument)?void 0:o.body),l=k(n);return r?t.concat(l,l.visualViewport||[],B(n)?n:[]):t.concat(n,q(n))}function V(e){const t=j(e);let o=parseFloat(t.width)||0,n=parseFloat(t.height)||0;const r=D(e),l=r?e.offsetWidth:o,c=r?e.offsetHeight:n,s=i(o)!==l||i(n)!==c;return s&&(o=l,n=c),{width:o,height:n,$:s}}function K(e){return N(e)?e:e.contextElement}function X(e){const t=K(e);if(!D(t))return s(1);const o=t.getBoundingClientRect(),{width:n,height:r,$:l}=V(t);let c=(l?i(o.width):o.width)/n,a=(l?i(o.height):o.height)/r;return c&&Number.isFinite(c)||(c=1),a&&Number.isFinite(a)||(a=1),{x:c,y:a}}const Y=s(0);function Z(e){const t=k(e);return W()&&t.visualViewport?{x:t.visualViewport.offsetLeft,y:t.visualViewport.offsetTop}:Y}function U(e,t,o,n){void 0===t&&(t=!1),void 0===o&&(o=!1);const r=e.getBoundingClientRect(),l=K(e);let i=s(1);t&&(n?N(n)&&(i=X(n)):i=X(e));const c=function(e,t,o){return void 0===t&&(t=!1),!(!o||t&&o!==k(e))&&t}(l,o,n)?Z(l):s(0);let a=(r.left+c.x)/i.x,u=(r.top+c.y)/i.y,d=r.width/i.x,f=r.height/i.y;if(l){const e=k(l),t=n&&N(n)?k(n):n;let o=e.frameElement;for(;o&&n&&t!==e;){const e=X(o),t=o.getBoundingClientRect(),n=j(o),r=t.left+(o.clientLeft+parseFloat(n.paddingLeft))*e.x,l=t.top+(o.clientTop+parseFloat(n.paddingTop))*e.y;a*=e.x,u*=e.y,d*=e.x,f*=e.y,a+=r,u+=l,o=k(o).frameElement}}return _({width:d,height:f,x:a,y:u})}function J(e){return U(O(e)).left+F(e).scrollLeft}function Q(e,t,o){let n;if("viewport"===t)n=function(e,t){const o=k(e),n=O(e),r=o.visualViewport;let l=n.clientWidth,i=n.clientHeight,c=0,s=0;if(r){l=r.width,i=r.height;const e=W();(!e||e&&"fixed"===t)&&(c=r.offsetLeft,s=r.offsetTop)}return{width:l,height:i,x:c,y:s}}(e,o);else if("document"===t)n=function(e){const t=O(e),o=F(e),n=e.ownerDocument.body,r=l(t.scrollWidth,t.clientWidth,n.scrollWidth,n.clientWidth),i=l(t.scrollHeight,t.clientHeight,n.scrollHeight,n.clientHeight);let c=-o.scrollLeft+J(e);const s=-o.scrollTop;return"rtl"===j(n).direction&&(c+=l(t.clientWidth,n.clientWidth)-r),{width:r,height:i,x:c,y:s}}(O(e));else if(N(t))n=function(e,t){const o=U(e,!0,"fixed"===t),n=o.top+e.clientTop,r=o.left+e.clientLeft,l=D(e)?X(e):s(1);return{width:e.clientWidth*l.x,height:e.clientHeight*l.y,x:r*l.x,y:n*l.y}}(t,o);else{const o=Z(e);n={...t,x:t.x-o.x,y:t.y-o.y}}return _(n)}function G(e,t){const o=z(e);return!(o===t||!N(o)||I(o))&&("fixed"===j(o).position||G(o,t))}function ee(e,t,o){const n=D(t),r=O(t),l="fixed"===o,i=U(e,!0,l,t);let c={scrollLeft:0,scrollTop:0};const a=s(0);if(n||!n&&!l)if(("body"!==L(t)||B(r))&&(c=F(t)),n){const e=U(t,!0,l,t);a.x=e.x+t.clientLeft,a.y=e.y+t.clientTop}else r&&(a.x=J(r));return{x:i.left+c.scrollLeft-a.x,y:i.top+c.scrollTop-a.y,width:i.width,height:i.height}}function te(e,t){return D(e)&&"fixed"!==j(e).position?t?t(e):e.offsetParent:null}function oe(e,t){const o=k(e);if(!D(e))return o;let n=te(e,t);for(;n&&P(n)&&"static"===j(n).position;)n=te(n,t);return n&&("html"===L(n)||"body"===L(n)&&"static"===j(n).position&&!H(n))?o:n||function(e){let t=z(e);for(;D(t)&&!I(t);){if(H(t))return t;t=z(t)}return null}(e)||o}const ne={convertOffsetParentRelativeRectToViewportRelativeRect:function(e){let{rect:t,offsetParent:o,strategy:n}=e;const r=D(o),l=O(o);if(o===l)return t;let i={scrollLeft:0,scrollTop:0},c=s(1);const a=s(0);if((r||!r&&"fixed"!==n)&&(("body"!==L(o)||B(l))&&(i=F(o)),D(o))){const e=U(o);c=X(o),a.x=e.x+o.clientLeft,a.y=e.y+o.clientTop}return{width:t.width*c.x,height:t.height*c.y,x:t.x*c.x-i.scrollLeft*c.x+a.x,y:t.y*c.y-i.scrollTop*c.y+a.y}},getDocumentElement:O,getClippingRect:function(e){let{element:t,boundary:o,rootBoundary:n,strategy:i}=e;const c=[..."clippingAncestors"===o?function(e,t){const o=t.get(e);if(o)return o;let n=q(e).filter((e=>N(e)&&"body"!==L(e))),r=null;const l="fixed"===j(e).position;let i=l?z(e):e;for(;N(i)&&!I(i);){const t=j(i),o=H(i);o||"fixed"!==t.position||(r=null),(l?!o&&!r:!o&&"static"===t.position&&r&&["absolute","fixed"].includes(r.position)||B(i)&&!o&&G(e,i))?n=n.filter((e=>e!==i)):r=t,i=z(i)}return t.set(e,n),n}(t,this._c):[].concat(o),n],s=c[0],a=c.reduce(((e,o)=>{const n=Q(t,o,i);return e.top=l(n.top,e.top),e.right=r(n.right,e.right),e.bottom=r(n.bottom,e.bottom),e.left=l(n.left,e.left),e}),Q(t,s,i));return{width:a.right-a.left,height:a.bottom-a.top,x:a.left,y:a.top}},getOffsetParent:oe,getElementRects:async function(e){let{reference:t,floating:o,strategy:n}=e;const r=this.getOffsetParent||oe,l=this.getDimensions;return{reference:ee(t,await r(o),n),floating:{x:0,y:0,...await l(o)}}},getClientRects:function(e){return Array.from(e.getClientRects())},getDimensions:function(e){return V(e)},getScale:X,isElement:N,isRTL:function(e){return"rtl"===j(e).direction}};const re=(e,t,o)=>{const n=new Map,r={platform:ne,...o},l={...r.platform,_c:n};return(async(e,t,o)=>{const{placement:n="bottom",strategy:r="absolute",middleware:l=[],platform:i}=o,c=l.filter(Boolean),s=await(null==i.isRTL?void 0:i.isRTL(t));let a=await i.getElementRects({reference:e,floating:t,strategy:r}),{x:u,y:d}=E(a,n,s),f=n,p={},m=0;for(let o=0;o<c.length;o++){const{name:l,fn:y}=c[o],{x:h,y:v,data:w,reset:g}=await y({x:u,y:d,initialPlacement:n,placement:f,strategy:r,middlewareData:p,rects:a,platform:i,elements:{reference:e,floating:t}});u=null!=h?h:u,d=null!=v?v:d,p={...p,[l]:{...p[l],...w}},g&&m<=50&&(m++,"object"==typeof g&&(g.placement&&(f=g.placement),g.rects&&(a=!0===g.rects?await i.getElementRects({reference:e,floating:t,strategy:r}):g.rects),({x:u,y:d}=E(a,f,s))),o=-1)}return{x:u,y:d,placement:f,strategy:r,middlewareData:p}})(e,t,{...r,platform:l})};var le=o(2779);const ie="react-tooltip-core-styles",ce="react-tooltip-base-styles",se={core:!1,base:!1};function ae({css:e,id:t=ce,type:o="base",ref:n}){var r,l;if(!e||"undefined"==typeof document||se[o])return;if("core"===o&&"undefined"!=typeof process&&(null===(r=null===process||void 0===process?void 0:process.env)||void 0===r?void 0:r.REACT_TOOLTIP_DISABLE_CORE_STYLES))return;if("base"!==o&&"undefined"!=typeof process&&(null===(l=null===process||void 0===process?void 0:process.env)||void 0===l?void 0:l.REACT_TOOLTIP_DISABLE_BASE_STYLES))return;"core"===o&&(t=ie),n||(n={});const{insertAt:i}=n;if(document.getElementById(t))return void console.warn(`[react-tooltip] Element with id '${t}' already exists. Call \`removeStyle()\` first`);const c=document.head||document.getElementsByTagName("head")[0],s=document.createElement("style");s.id=t,s.type="text/css","top"===i&&c.firstChild?c.insertBefore(s,c.firstChild):c.appendChild(s),s.styleSheet?s.styleSheet.cssText=e:s.appendChild(document.createTextNode(e)),se[o]=!0}function ue({type:e="base",id:t=ce}={}){if(!se[e])return;"core"===e&&(t=ie);const o=document.getElementById(t);"style"===(null==o?void 0:o.tagName)?null==o||o.remove():console.warn(`[react-tooltip] Failed to remove 'style' element with id '${t}'. Call \`injectStyle()\` first`),se[e]=!1}const de=(e,t,o)=>{let n=null;return function(...r){const l=()=>{n=null,o||e.apply(this,r)};o&&!n&&(e.apply(this,r),n=setTimeout(l,t)),o||(n&&clearTimeout(n),n=setTimeout(l,t))}},fe="DEFAULT_TOOLTIP_ID",pe={anchorRefs:new Set,activeAnchor:{current:null},attach:()=>{},detach:()=>{},setActiveAnchor:()=>{}},me=(0,n.createContext)({getTooltipData:()=>pe}),ye=({children:e})=>{const[t,o]=(0,n.useState)({[fe]:new Set}),[r,l]=(0,n.useState)({[fe]:{current:null}}),i=(e,...t)=>{o((o=>{var n;const r=null!==(n=o[e])&&void 0!==n?n:new Set;return t.forEach((e=>r.add(e))),{...o,[e]:new Set(r)}}))},c=(e,...t)=>{o((o=>{const n=o[e];return n?(t.forEach((e=>n.delete(e))),{...o}):o}))},s=(0,n.useCallback)(((e=fe)=>{var o,n;return{anchorRefs:null!==(o=t[e])&&void 0!==o?o:new Set,activeAnchor:null!==(n=r[e])&&void 0!==n?n:{current:null},attach:(...t)=>i(e,...t),detach:(...t)=>c(e,...t),setActiveAnchor:t=>((e,t)=>{l((o=>{var n;return(null===(n=o[e])||void 0===n?void 0:n.current)===t.current?o:{...o,[e]:t}}))})(e,t)}}),[t,r,i,c]),a=(0,n.useMemo)((()=>({getTooltipData:s})),[s]);return n.createElement(me.Provider,{value:a},e)};function he(e=fe){return(0,n.useContext)(me).getTooltipData(e)}const ve=({tooltipId:e,children:t,className:o,place:r,content:l,html:i,variant:c,offset:s,wrapper:a,events:u,positionStrategy:d,delayShow:f,delayHide:p})=>{const{attach:m,detach:y}=he(e),h=(0,n.useRef)(null);return(0,n.useEffect)((()=>(m(h),()=>{y(h)})),[]),n.createElement("span",{ref:h,className:le("react-tooltip-wrapper",o),"data-tooltip-place":r,"data-tooltip-content":l,"data-tooltip-html":i,"data-tooltip-variant":c,"data-tooltip-offset":s,"data-tooltip-wrapper":a,"data-tooltip-events":u,"data-tooltip-position-strategy":d,"data-tooltip-delay-show":f,"data-tooltip-delay-hide":p},t)},we="undefined"!=typeof window?n.useLayoutEffect:n.useEffect,ge=e=>{if(!(e instanceof HTMLElement||e instanceof SVGElement))return!1;const t=getComputedStyle(e);return["overflow","overflow-x","overflow-y"].some((e=>{const o=t.getPropertyValue(e);return"auto"===o||"scroll"===o}))},be=e=>{if(!e)return null;let t=e.parentElement;for(;t;){if(ge(t))return t;t=t.parentElement}return document.scrollingElement||document.documentElement},xe=async({elementReference:e=null,tooltipReference:t=null,tooltipArrowReference:o=null,place:n="top",offset:l=10,strategy:i="absolute",middlewares:c=[R(Number(l)),T(),A({padding:5})],border:s})=>{if(!e)return{tooltipStyles:{},tooltipArrowStyles:{},place:n};if(null===t)return{tooltipStyles:{},tooltipArrowStyles:{},place:n};const a=c;return o?(a.push({name:"arrow",options:u={element:o,padding:5},async fn(e){const{x:t,y:o,placement:n,rects:l,platform:i,elements:c}=e,{element:s,padding:a=0}=f(u,e)||{};if(null==s)return{};const p=x(a),y={x:t,y:o},v=w(n),g=h(v),b=await i.getDimensions(s),_="y"===v,E=_?"top":"left",S=_?"bottom":"right",T=_?"clientHeight":"clientWidth",R=l.reference[g]+l.reference[v]-y[v]-l.floating[g],A=y[v]-l.reference[v],L=await(null==i.getOffsetParent?void 0:i.getOffsetParent(s));let k=L?L[T]:0;k&&await(null==i.isElement?void 0:i.isElement(L))||(k=c.floating[T]||l.floating[g]);const O=R/2-A/2,C=k/2-b[g]/2-1,N=r(p[E],C),D=r(p[S],C),$=N,B=k-b[g]-D,P=k/2-b[g]/2+O,H=d($,P,B),W=null!=m(n)&&P!=H&&l.reference[g]/2-(P<$?N:D)-b[g]/2<0?P<$?$-P:B-P:0;return{[v]:y[v]-W,data:{[v]:H,centerOffset:P-H+W}}}}),re(e,t,{placement:n,strategy:i,middleware:a}).then((({x:e,y:t,placement:o,middlewareData:n})=>{var r,l;const i={left:`${e}px`,top:`${t}px`,border:s},{x:c,y:a}=null!==(r=n.arrow)&&void 0!==r?r:{x:0,y:0},u=null!==(l={top:"bottom",right:"left",bottom:"top",left:"right"}[o.split("-")[0]])&&void 0!==l?l:"bottom",d=s&&{borderBottom:s,borderRight:s};let f=0;if(s){const e=`${s}`.match(/(\d+)px/);f=(null==e?void 0:e[1])?Number(e[1]):1}return{tooltipStyles:i,tooltipArrowStyles:{left:null!=c?`${c}px`:"",top:null!=a?`${a}px`:"",right:"",bottom:"",...d,[u]:`-${4+f}px`},place:o}}))):re(e,t,{placement:"bottom",strategy:i,middleware:a}).then((({x:e,y:t,placement:o})=>({tooltipStyles:{left:`${e}px`,top:`${t}px`},tooltipArrowStyles:{},place:o})));var u};var _e={tooltip:"styles-module_tooltip__mnnfp",arrow:"styles-module_arrow__K0L3T",dark:"styles-module_dark__xNqje",light:"styles-module_light__Z6W-X",success:"styles-module_success__A2AKt",warning:"styles-module_warning__SCK0X",error:"styles-module_error__JvumD",info:"styles-module_info__BWdHW"};const Ee=({id:e,className:t,classNameArrow:o,variant:i="dark",anchorId:s,anchorSelect:a,place:u="top",offset:d=10,events:f=["hover"],openOnClick:p=!1,positionStrategy:m="absolute",middlewares:y,wrapper:h,delayShow:v=0,delayHide:w=0,float:g=!1,hidden:b=!1,noArrow:x=!1,clickable:_=!1,closeOnEsc:E=!1,closeOnScroll:S=!1,closeOnResize:T=!1,style:R,position:A,afterShow:L,afterHide:k,content:C,contentWrapperRef:N,isOpen:D,setIsOpen:$,activeAnchor:B,setActiveAnchor:P,border:H,opacity:W,arrowColor:I})=>{const j=(0,n.useRef)(null),F=(0,n.useRef)(null),z=(0,n.useRef)(null),M=(0,n.useRef)(null),[V,X]=(0,n.useState)(u),[Y,Z]=(0,n.useState)({}),[J,Q]=(0,n.useState)({}),[G,ee]=(0,n.useState)(!1),[te,oe]=(0,n.useState)(!1),ne=(0,n.useRef)(!1),re=(0,n.useRef)(null),{anchorRefs:ie,setActiveAnchor:ce}=he(e),se=(0,n.useRef)(!1),[ae,ue]=(0,n.useState)([]),fe=(0,n.useRef)(!1),pe=p||f.includes("click");we((()=>(fe.current=!0,()=>{fe.current=!1})),[]),(0,n.useEffect)((()=>{if(!G){const e=setTimeout((()=>{oe(!1)}),150);return()=>{clearTimeout(e)}}return()=>null}),[G]);const me=e=>{fe.current&&(e&&oe(!0),setTimeout((()=>{fe.current&&(null==$||$(e),void 0===D&&ee(e))}),10))};(0,n.useEffect)((()=>{if(void 0===D)return()=>null;D&&oe(!0);const e=setTimeout((()=>{ee(D)}),10);return()=>{clearTimeout(e)}}),[D]),(0,n.useEffect)((()=>{G!==ne.current&&(ne.current=G,G?null==L||L():null==k||k())}),[G]);const ye=(e=w)=>{M.current&&clearTimeout(M.current),M.current=setTimeout((()=>{se.current||me(!1)}),e)},ve=e=>{var t;if(!e)return;const o=null!==(t=e.currentTarget)&&void 0!==t?t:e.target;if(!(null==o?void 0:o.isConnected))return P(null),void ce({current:null});v?(z.current&&clearTimeout(z.current),z.current=setTimeout((()=>{me(!0)}),v)):me(!0),P(o),ce({current:o}),M.current&&clearTimeout(M.current)},ge=()=>{_?ye(w||100):w?ye():me(!1),z.current&&clearTimeout(z.current)},Ee=({x:e,y:t})=>{xe({place:u,offset:d,elementReference:{getBoundingClientRect:()=>({x:e,y:t,width:0,height:0,top:t,left:e,right:e,bottom:t})},tooltipReference:j.current,tooltipArrowReference:F.current,strategy:m,middlewares:y,border:H}).then((e=>{Object.keys(e.tooltipStyles).length&&Z(e.tooltipStyles),Object.keys(e.tooltipArrowStyles).length&&Q(e.tooltipArrowStyles),X(e.place)}))},Se=e=>{if(!e)return;const t=e,o={x:t.clientX,y:t.clientY};Ee(o),re.current=o},Te=e=>{ve(e),w&&ye()},Re=e=>{var t;[document.querySelector(`[id='${s}']`),...ae].some((t=>null==t?void 0:t.contains(e.target)))||(null===(t=j.current)||void 0===t?void 0:t.contains(e.target))||(me(!1),z.current&&clearTimeout(z.current))},Ae=de(ve,50,!0),Le=de(ge,50,!0),ke=(0,n.useCallback)((()=>{A?Ee(A):g?re.current&&Ee(re.current):xe({place:u,offset:d,elementReference:B,tooltipReference:j.current,tooltipArrowReference:F.current,strategy:m,middlewares:y,border:H}).then((e=>{fe.current&&(Object.keys(e.tooltipStyles).length&&Z(e.tooltipStyles),Object.keys(e.tooltipArrowStyles).length&&Q(e.tooltipArrowStyles),X(e.place))}))}),[G,B,C,R,u,d,m,A,g]);(0,n.useEffect)((()=>{var e,t;const o=new Set(ie);ae.forEach((e=>{o.add({current:e})}));const n=document.querySelector(`[id='${s}']`);n&&o.add({current:n});const i=()=>{me(!1)},a=be(B),u=be(j.current);S&&(window.addEventListener("scroll",i),null==a||a.addEventListener("scroll",i),null==u||u.addEventListener("scroll",i));let d=null;T?window.addEventListener("resize",i):B&&j.current&&(d=function(e,t,o,n){void 0===n&&(n={});const{ancestorScroll:i=!0,ancestorResize:s=!0,elementResize:a="function"==typeof ResizeObserver,layoutShift:u="function"==typeof IntersectionObserver,animationFrame:d=!1}=n,f=K(e),p=i||s?[...f?q(f):[],...q(t)]:[];p.forEach((e=>{i&&e.addEventListener("scroll",o,{passive:!0}),s&&e.addEventListener("resize",o)}));const m=f&&u?function(e,t){let o,n=null;const i=O(e);function s(){clearTimeout(o),n&&n.disconnect(),n=null}return function a(u,d){void 0===u&&(u=!1),void 0===d&&(d=1),s();const{left:f,top:p,width:m,height:y}=e.getBoundingClientRect();if(u||t(),!m||!y)return;const h={rootMargin:-c(p)+"px "+-c(i.clientWidth-(f+m))+"px "+-c(i.clientHeight-(p+y))+"px "+-c(f)+"px",threshold:l(0,r(1,d))||1};let v=!0;function w(e){const t=e[0].intersectionRatio;if(t!==d){if(!v)return a();t?a(!1,t):o=setTimeout((()=>{a(!1,1e-7)}),100)}v=!1}try{n=new IntersectionObserver(w,{...h,root:i.ownerDocument})}catch(e){n=new IntersectionObserver(w,h)}n.observe(e)}(!0),s}(f,o):null;let y,h=-1,v=null;a&&(v=new ResizeObserver((e=>{let[n]=e;n&&n.target===f&&v&&(v.unobserve(t),cancelAnimationFrame(h),h=requestAnimationFrame((()=>{v&&v.observe(t)}))),o()})),f&&!d&&v.observe(f),v.observe(t));let w=d?U(e):null;return d&&function t(){const n=U(e);!w||n.x===w.x&&n.y===w.y&&n.width===w.width&&n.height===w.height||o(),w=n,y=requestAnimationFrame(t)}(),o(),()=>{p.forEach((e=>{i&&e.removeEventListener("scroll",o),s&&e.removeEventListener("resize",o)})),m&&m(),v&&v.disconnect(),v=null,d&&cancelAnimationFrame(y)}}(B,j.current,ke,{ancestorResize:!0,elementResize:!0,layoutShift:!0}));const f=e=>{"Escape"===e.key&&me(!1)};E&&window.addEventListener("keydown",f);const p=[];pe?(window.addEventListener("click",Re),p.push({event:"click",listener:Te})):(p.push({event:"mouseenter",listener:Ae},{event:"mouseleave",listener:Le},{event:"focus",listener:Ae},{event:"blur",listener:Le}),g&&p.push({event:"mousemove",listener:Se}));const m=()=>{se.current=!0},y=()=>{se.current=!1,ge()};return _&&!pe&&(null===(e=j.current)||void 0===e||e.addEventListener("mouseenter",m),null===(t=j.current)||void 0===t||t.addEventListener("mouseleave",y)),p.forEach((({event:e,listener:t})=>{o.forEach((o=>{var n;null===(n=o.current)||void 0===n||n.addEventListener(e,t)}))})),()=>{var e,t;S&&(window.removeEventListener("scroll",i),null==a||a.removeEventListener("scroll",i),null==u||u.removeEventListener("scroll",i)),T?window.removeEventListener("resize",i):null==d||d(),pe&&window.removeEventListener("click",Re),E&&window.removeEventListener("keydown",f),_&&!pe&&(null===(e=j.current)||void 0===e||e.removeEventListener("mouseenter",m),null===(t=j.current)||void 0===t||t.removeEventListener("mouseleave",y)),p.forEach((({event:e,listener:t})=>{o.forEach((o=>{var n;null===(n=o.current)||void 0===n||n.removeEventListener(e,t)}))}))}}),[B,ke,te,ie,ae,E,f]),(0,n.useEffect)((()=>{let t=null!=a?a:"";!t&&e&&(t=`[data-tooltip-id='${e}']`);const o=new MutationObserver((o=>{const n=[];o.forEach((o=>{if("attributes"===o.type&&"data-tooltip-id"===o.attributeName&&o.target.getAttribute("data-tooltip-id")===e&&n.push(o.target),"childList"===o.type&&(B&&[...o.removedNodes].some((e=>{var t;return!!(null===(t=null==e?void 0:e.contains)||void 0===t?void 0:t.call(e,B))&&(oe(!1),me(!1),P(null),z.current&&clearTimeout(z.current),M.current&&clearTimeout(M.current),!0)})),t))try{const e=[...o.addedNodes].filter((e=>1===e.nodeType));n.push(...e.filter((e=>e.matches(t)))),n.push(...e.flatMap((e=>[...e.querySelectorAll(t)])))}catch(e){}})),n.length&&ue((e=>[...e,...n]))}));return o.observe(document.body,{childList:!0,subtree:!0,attributes:!0,attributeFilter:["data-tooltip-id"]}),()=>{o.disconnect()}}),[e,a,B]),(0,n.useEffect)((()=>{ke()}),[ke]),(0,n.useEffect)((()=>{if(!(null==N?void 0:N.current))return()=>null;const e=new ResizeObserver((()=>{ke()}));return e.observe(N.current),()=>{e.disconnect()}}),[C,null==N?void 0:N.current]),(0,n.useEffect)((()=>{var e;const t=document.querySelector(`[id='${s}']`),o=[...ae,t];B&&o.includes(B)||P(null!==(e=ae[0])&&void 0!==e?e:t)}),[s,ae,B]),(0,n.useEffect)((()=>()=>{z.current&&clearTimeout(z.current),M.current&&clearTimeout(M.current)}),[]),(0,n.useEffect)((()=>{let t=a;if(!t&&e&&(t=`[data-tooltip-id='${e}']`),t)try{const e=Array.from(document.querySelectorAll(t));ue(e)}catch(t){ue([])}}),[e,a]);const Oe=!b&&C&&G&&Object.keys(Y).length>0;return te?n.createElement(h,{id:e,role:"tooltip",className:le("react-tooltip","core-styles-module_tooltip__3vRRp",_e.tooltip,_e[i],t,`react-tooltip__place-${V}`,{"react-tooltip__show":Oe,"core-styles-module_show__Nt9eE":Oe,"core-styles-module_fixed__pcSol":"fixed"===m,"core-styles-module_clickable__ZuTTB":_}),style:{...R,...Y,opacity:void 0!==W&&Oe?W:void 0},ref:j},C,n.createElement(h,{className:le("react-tooltip-arrow","core-styles-module_arrow__cvMwQ",_e.arrow,o,{"core-styles-module_noArrow__xock6":x}),style:{...J,background:I?`linear-gradient(to right bottom, transparent 50%, ${I} 50%)`:void 0},ref:F})):null},Se=({content:e})=>n.createElement("span",{dangerouslySetInnerHTML:{__html:e}}),Te=({id:e,anchorId:t,anchorSelect:o,content:r,html:l,render:i,className:c,classNameArrow:s,variant:a="dark",place:u="top",offset:d=10,wrapper:f="div",children:p=null,events:m=["hover"],openOnClick:y=!1,positionStrategy:h="absolute",middlewares:v,delayShow:w=0,delayHide:g=0,float:b=!1,hidden:x=!1,noArrow:_=!1,clickable:E=!1,closeOnEsc:S=!1,closeOnScroll:T=!1,closeOnResize:R=!1,style:A,position:L,isOpen:k,disableStyleInjection:O=!1,border:C,opacity:N,arrowColor:D,setIsOpen:$,afterShow:B,afterHide:P})=>{const[H,W]=(0,n.useState)(r),[I,j]=(0,n.useState)(l),[F,z]=(0,n.useState)(u),[M,q]=(0,n.useState)(a),[V,K]=(0,n.useState)(d),[X,Y]=(0,n.useState)(w),[Z,U]=(0,n.useState)(g),[J,Q]=(0,n.useState)(b),[G,ee]=(0,n.useState)(x),[te,oe]=(0,n.useState)(f),[ne,re]=(0,n.useState)(m),[le,ie]=(0,n.useState)(h),[ce,se]=(0,n.useState)(null),ae=(0,n.useRef)(O),{anchorRefs:ue,activeAnchor:de}=he(e),fe=e=>null==e?void 0:e.getAttributeNames().reduce(((t,o)=>{var n;return o.startsWith("data-tooltip-")&&(t[o.replace(/^data-tooltip-/,"")]=null!==(n=null==e?void 0:e.getAttribute(o))&&void 0!==n?n:null),t}),{}),pe=e=>{const t={place:e=>{var t;z(null!==(t=e)&&void 0!==t?t:u)},content:e=>{W(null!=e?e:r)},html:e=>{j(null!=e?e:l)},variant:e=>{var t;q(null!==(t=e)&&void 0!==t?t:a)},offset:e=>{K(null===e?d:Number(e))},wrapper:e=>{var t;oe(null!==(t=e)&&void 0!==t?t:f)},events:e=>{const t=null==e?void 0:e.split(" ");re(null!=t?t:m)},"position-strategy":e=>{var t;ie(null!==(t=e)&&void 0!==t?t:h)},"delay-show":e=>{Y(null===e?w:Number(e))},"delay-hide":e=>{U(null===e?g:Number(e))},float:e=>{Q(null===e?b:"true"===e)},hidden:e=>{ee(null===e?x:"true"===e)}};Object.values(t).forEach((e=>e(null))),Object.entries(e).forEach((([e,o])=>{var n;null===(n=t[e])||void 0===n||n.call(t,o)}))};(0,n.useEffect)((()=>{W(r)}),[r]),(0,n.useEffect)((()=>{j(l)}),[l]),(0,n.useEffect)((()=>{z(u)}),[u]),(0,n.useEffect)((()=>{q(a)}),[a]),(0,n.useEffect)((()=>{K(d)}),[d]),(0,n.useEffect)((()=>{Y(w)}),[w]),(0,n.useEffect)((()=>{U(g)}),[g]),(0,n.useEffect)((()=>{Q(b)}),[b]),(0,n.useEffect)((()=>{ee(x)}),[x]),(0,n.useEffect)((()=>{ie(h)}),[h]),(0,n.useEffect)((()=>{ae.current!==O&&console.warn("[react-tooltip] Do not change `disableStyleInjection` dynamically.")}),[O]),(0,n.useEffect)((()=>{"undefined"!=typeof window&&window.dispatchEvent(new CustomEvent("react-tooltip-inject-styles",{detail:{disableCore:"core"===O,disableBase:O}}))}),[]),(0,n.useEffect)((()=>{var n;const r=new Set(ue);let l=o;if(!l&&e&&(l=`[data-tooltip-id='${e}']`),l)try{document.querySelectorAll(l).forEach((e=>{r.add({current:e})}))}catch(n){console.warn(`[react-tooltip] "${l}" is not a valid CSS selector`)}const i=document.querySelector(`[id='${t}']`);if(i&&r.add({current:i}),!r.size)return()=>null;const c=null!==(n=null!=ce?ce:i)&&void 0!==n?n:de.current,s=new MutationObserver((e=>{e.forEach((e=>{var t;if(!c||"attributes"!==e.type||!(null===(t=e.attributeName)||void 0===t?void 0:t.startsWith("data-tooltip-")))return;const o=fe(c);pe(o)}))})),a={attributes:!0,childList:!1,subtree:!1};if(c){const e=fe(c);pe(e),s.observe(c,a)}return()=>{s.disconnect()}}),[ue,de,ce,t,o]),(0,n.useEffect)((()=>{(null==A?void 0:A.border)&&console.warn("[react-tooltip] Do not set `style.border`. Use `border` prop instead."),C&&!CSS.supports("border",`${C}`)&&console.warn(`[react-tooltip] "${C}" is not a valid \`border\`.`),(null==A?void 0:A.opacity)&&console.warn("[react-tooltip] Do not set `style.opacity`. Use `opacity` prop instead."),N&&!CSS.supports("opacity",`${N}`)&&console.warn(`[react-tooltip] "${N}" is not a valid \`opacity\`.`)}),[]);let me=p;const ye=(0,n.useRef)(null);if(i){const e=i({content:null!=H?H:null,activeAnchor:ce});me=e?n.createElement("div",{ref:ye,className:"react-tooltip-content-wrapper"},e):null}else H&&(me=H);I&&(me=n.createElement(Se,{content:I}));const ve={id:e,anchorId:t,anchorSelect:o,className:c,classNameArrow:s,content:me,contentWrapperRef:ye,place:F,variant:M,offset:V,wrapper:te,events:ne,openOnClick:y,positionStrategy:le,middlewares:v,delayShow:X,delayHide:Z,float:J,hidden:G,noArrow:_,clickable:E,closeOnEsc:S,closeOnScroll:T,closeOnResize:R,style:A,position:L,isOpen:k,border:C,opacity:N,arrowColor:D,setIsOpen:$,afterShow:B,afterHide:P,activeAnchor:ce,setActiveAnchor:e=>se(e)};return n.createElement(Ee,{...ve})};"undefined"!=typeof window&&window.addEventListener("react-tooltip-inject-styles",(e=>{e.detail.disableCore||ae({css:":root{--rt-color-white:#fff;--rt-color-dark:#222;--rt-color-success:#8dc572;--rt-color-error:#be6464;--rt-color-warning:#f0ad4e;--rt-color-info:#337ab7;--rt-opacity:0.9}.core-styles-module_tooltip__3vRRp{visibility:hidden;position:absolute;top:0;left:0;pointer-events:none;opacity:0;transition:opacity 0.3s ease-out;will-change:opacity,visibility}.core-styles-module_fixed__pcSol{position:fixed}.core-styles-module_arrow__cvMwQ{position:absolute;background:inherit}.core-styles-module_noArrow__xock6{display:none}.core-styles-module_clickable__ZuTTB{pointer-events:auto}.core-styles-module_show__Nt9eE{visibility:visible;opacity:var(--rt-opacity)}",type:"core"}),e.detail.disableBase||ae({css:"\n.styles-module_tooltip__mnnfp{padding:8px 16px;border-radius:3px;font-size:90%;width:max-content}.styles-module_arrow__K0L3T{width:8px;height:8px}[class*='react-tooltip__place-top']>.styles-module_arrow__K0L3T{transform:rotate(45deg)}[class*='react-tooltip__place-right']>.styles-module_arrow__K0L3T{transform:rotate(135deg)}[class*='react-tooltip__place-bottom']>.styles-module_arrow__K0L3T{transform:rotate(225deg)}[class*='react-tooltip__place-left']>.styles-module_arrow__K0L3T{transform:rotate(315deg)}.styles-module_dark__xNqje{background:var(--rt-color-dark);color:var(--rt-color-white)}.styles-module_light__Z6W-X{background-color:var(--rt-color-white);color:var(--rt-color-dark)}.styles-module_success__A2AKt{background-color:var(--rt-color-success);color:var(--rt-color-white)}.styles-module_warning__SCK0X{background-color:var(--rt-color-warning);color:var(--rt-color-white)}.styles-module_error__JvumD{background-color:var(--rt-color-error);color:var(--rt-color-white)}.styles-module_info__BWdHW{background-color:var(--rt-color-info);color:var(--rt-color-white)}",type:"base"})}))}}]);