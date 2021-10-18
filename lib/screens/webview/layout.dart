// String getHtmlString(data) {
//   String _data = data;
//   return """<html lang="en">
//             <body>hello world $_data</body>
//            </html>""";
// }

String getHtmlString(data, cm) {
  dynamic _data = data;
  dynamic _courseModule = cm;
  return """
           <!DOCTYPE html>

<html dir="ltr" lang="en" xml:lang="en">
  <head>
    <title>Healthy Entrepreneurs</title>
    <link
      rel="shortcut icon"
      href="http://sundeo.pagekite.me//theme/image.php/boost/theme/1633508390/favicon"
    />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="moodle, Operating System" />
    <link
      rel="stylesheet"
      type="text/css"
      href="http://sundeo.pagekite.me//theme/yui_combo.php?rollup/3.17.2/yui-moodlesimple-min.css"
    />
    <script id="firstthemesheet" type="text/css">
      /** Required in order to fix style inclusion problems in IE with YUI **/
    </script>
    <link
      rel="stylesheet"
      type="text/css"
      href="http://sundeo.pagekite.me//theme/styles.php/boost/1633508390_1/all"
    />
    <script>
      //<![CDATA[
      var M = {};
      M.yui = {};
      M.pageloadstarttime = new Date();
      M.cfg = {
        wwwroot: "http:\/\/sundeo.pagekite.me",
        sesskey: "iURXuOxycn",
        sessiontimeout: "28800",
        sessiontimeoutwarning: "1200",
        themerev: "1633508390",
        slasharguments: 1,
        theme: "boost",
        iconsystemmodule: "core\/icon_system_fontawesome",
        jsrev: "1633508391",
        admin: "admin",
        svgicons: true,
        usertimezone: "Africa\/Kampala",
        contextid: 47,
        langrev: 1633508391,
        templaterev: "1633508391",
      };
      var yui1ConfigFn = function (me) {
        if (/-skin|reset|fonts|grids|base/.test(me.name)) {
          me.type = "css";
          me.path = me.path.replace(/\.js/, ".css");
          me.path = me.path.replace(
            /\/yui2-skin/,
            "/assets/skins/sam/yui2-skin"
          );
        }
      };
      
      YUI_config = {
        debug: false,
        base: "http:\/\/sundeo.pagekite.me\/lib\/yuilib\/3.17.2\/",
        comboBase: "http:\/\/sundeo.pagekite.me\/theme\/yui_combo.php?",
        combine: true,
        filter: null,
        insertBefore: "firstthemesheet",
        groups: {
          yui2: {
            base: "http:\/\/sundeo.pagekite.me\/lib\/yuilib\/2in3\/2.9.0\/build\/",
            comboBase: "http:\/\/sundeo.pagekite.me\/theme\/yui_combo.php?",
            combine: true,
            ext: false,
            root: "2in3\/2.9.0\/build\/",
            patterns: { "yui2-": { group: "yui2", configFn: yui1ConfigFn } },
          },
          moodle: {
            name: "moodle",
            base: "http:\/\/sundeo.pagekite.me\/theme\/yui_combo.php?m\/1633508391\/",
            combine: true,
            comboBase: "http:\/\/sundeo.pagekite.me\/theme\/yui_combo.php?",
            ext: false,
            root: "m\/1633508391\/",
            patterns: {
              "moodle-": { group: "moodle", configFn: yui2ConfigFn },
            },
            filter: null,
            modules: {
              "moodle-core-actionmenu": {
                requires: ["base", "event", "node-event-simulate"],
              },
              "moodle-core-blocks": {
                requires: [
                  "base",
                  "node",
                  "io",
                  "dom",
                  "dd",
                  "dd-scroll",
                  "moodle-core-dragdrop",
                  "moodle-core-notification",
                ],
              },
              "moodle-core-chooserdialogue": {
                requires: ["base", "panel", "moodle-core-notification"],
              },
              "moodle-core-dragdrop": {
                requires: [
                  "base",
                  "node",
                  "io",
                  "dom",
                  "dd",
                  "event-key",
                  "event-focus",
                  "moodle-core-notification",
                ],
              },
              "moodle-core-event": { requires: ["event-custom"] },
              "moodle-core-formchangechecker": {
                requires: ["base", "event-focus", "moodle-core-event"],
              },
              "moodle-core-handlebars": {
                condition: { trigger: "handlebars", when: "after" },
              },
              "moodle-core-languninstallconfirm": {
                requires: [
                  "base",
                  "node",
                  "moodle-core-notification-confirm",
                  "moodle-core-notification-alert",
                ],
              },
              "moodle-core-lockscroll": { requires: ["plugin", "base-build"] },
              "moodle-core-maintenancemodetimer": {
                requires: ["base", "node"],
              },
              "moodle-core-notification": {
                requires: [
                  "moodle-core-notification-dialogue",
                  "moodle-core-notification-alert",
                  "moodle-core-notification-confirm",
                  "moodle-core-notification-exception",
                  "moodle-core-notification-ajaxexception",
                ],
              },
              "moodle-core-notification-dialogue": {
                requires: [
                  "base",
                  "node",
                  "panel",
                  "escape",
                  "event-key",
                  "dd-plugin",
                  "moodle-core-widget-focusafterclose",
                  "moodle-core-lockscroll",
                ],
              },
              "moodle-core-notification-alert": {
                requires: ["moodle-core-notification-dialogue"],
              },
              "moodle-core-notification-confirm": {
                requires: ["moodle-core-notification-dialogue"],
              },
              "moodle-core-notification-exception": {
                requires: ["moodle-core-notification-dialogue"],
              },
              "moodle-core-notification-ajaxexception": {
                requires: ["moodle-core-notification-dialogue"],
              },
              "moodle-core-popuphelp": { requires: ["moodle-core-tooltip"] },
              "moodle-core-tooltip": {
                requires: [
                  "base",
                  "node",
                  "io-base",
                  "moodle-core-notification-dialogue",
                  "json-parse",
                  "widget-position",
                  "widget-position-align",
                  "event-outside",
                  "cache-base",
                ],
              },
              "moodle-core_availability-form": {
                requires: [
                  "base",
                  "node",
                  "event",
                  "event-delegate",
                  "panel",
                  "moodle-core-notification-dialogue",
                  "json",
                ],
              },
              "moodle-backup-backupselectall": {
                requires: ["node", "event", "node-event-simulate", "anim"],
              },
              "moodle-backup-confirmcancel": {
                requires: [
                  "node",
                  "node-event-simulate",
                  "moodle-core-notification-confirm",
                ],
              },
              "moodle-course-categoryexpander": {
                requires: ["node", "event-key"],
              },
              "moodle-course-dragdrop": {
                requires: [
                  "base",
                  "node",
                  "io",
                  "dom",
                  "dd",
                  "dd-scroll",
                  "moodle-core-dragdrop",
                  "moodle-core-notification",
                  "moodle-course-coursebase",
                  "moodle-course-util",
                ],
              },
              "moodle-course-formatchooser": {
                requires: ["base", "node", "node-event-simulate"],
              },
              "moodle-course-management": {
                requires: [
                  "base",
                  "node",
                  "io-base",
                  "moodle-core-notification-exception",
                  "json-parse",
                  "dd-constrain",
                  "dd-proxy",
                  "dd-drop",
                  "dd-delegate",
                  "node-event-delegate",
                ],
              },
              "moodle-course-util": {
                requires: ["node"],
                use: ["moodle-course-util-base"],
                submodules: {
                  "moodle-course-util-base": {},
                  "moodle-course-util-section": {
                    requires: ["node", "moodle-course-util-base"],
                  },
                  "moodle-course-util-cm": {
                    requires: ["node", "moodle-course-util-base"],
                  },
                },
              },
              "moodle-form-dateselector": {
                requires: ["base", "node", "overlay", "calendar"],
              },
              "moodle-form-passwordunmask": { requires: [] },
              "moodle-form-shortforms": {
                requires: [
                  "node",
                  "base",
                  "selector-css3",
                  "moodle-core-event",
                ],
              },
              "moodle-question-chooser": {
                requires: ["moodle-core-chooserdialogue"],
              },
              "moodle-question-preview": {
                requires: [
                  "base",
                  "dom",
                  "event-delegate",
                  "event-key",
                  "core_question_engine",
                ],
              },
              "moodle-question-searchform": { requires: ["base", "node"] },
              "moodle-availability_completion-form": {
                requires: [
                  "base",
                  "node",
                  "event",
                  "moodle-core_availability-form",
                ],
              },
              "moodle-availability_date-form": {
                requires: [
                  "base",
                  "node",
                  "event",
                  "io",
                  "moodle-core_availability-form",
                ],
              },
              "moodle-availability_grade-form": {
                requires: [
                  "base",
                  "node",
                  "event",
                  "moodle-core_availability-form",
                ],
              },
              "moodle-availability_group-form": {
                requires: [
                  "base",
                  "node",
                  "event",
                  "moodle-core_availability-form",
                ],
              },
              "moodle-availability_grouping-form": {
                requires: [
                  "base",
                  "node",
                  "event",
                  "moodle-core_availability-form",
                ],
              },
              "moodle-availability_profile-form": {
                requires: [
                  "base",
                  "node",
                  "event",
                  "moodle-core_availability-form",
                ],
              },
              "moodle-mod_assign-history": { requires: ["node", "transition"] },
              "moodle-mod_quiz-autosave": {
                requires: [
                  "base",
                  "node",
                  "event",
                  "event-valuechange",
                  "node-event-delegate",
                  "io-form",
                ],
              },
              "moodle-mod_quiz-dragdrop": {
                requires: [
                  "base",
                  "node",
                  "io",
                  "dom",
                  "dd",
                  "dd-scroll",
                  "moodle-core-dragdrop",
                  "moodle-core-notification",
                  "moodle-mod_quiz-quizbase",
                  "moodle-mod_quiz-util-base",
                  "moodle-mod_quiz-util-page",
                  "moodle-mod_quiz-util-slot",
                  "moodle-course-util",
                ],
              },
              "moodle-mod_quiz-modform": {
                requires: ["base", "node", "event"],
              },
              "moodle-mod_quiz-questionchooser": {
                requires: [
                  "moodle-core-chooserdialogue",
                  "moodle-mod_quiz-util",
                  "querystring-parse",
                ],
              },
              "moodle-mod_quiz-quizbase": { requires: ["base", "node"] },
              "moodle-mod_quiz-toolboxes": {
                requires: [
                  "base",
                  "node",
                  "event",
                  "event-key",
                  "io",
                  "moodle-mod_quiz-quizbase",
                  "moodle-mod_quiz-util-slot",
                  "moodle-core-notification-ajaxexception",
                ],
              },
              "moodle-mod_quiz-util": {
                requires: ["node", "moodle-core-actionmenu"],
                use: ["moodle-mod_quiz-util-base"],
                submodules: {
                  "moodle-mod_quiz-util-base": {},
                  "moodle-mod_quiz-util-slot": {
                    requires: ["node", "moodle-mod_quiz-util-base"],
                  },
                  "moodle-mod_quiz-util-page": {
                    requires: ["node", "moodle-mod_quiz-util-base"],
                  },
                },
              },
              "moodle-message_airnotifier-toolboxes": {
                requires: ["base", "node", "io"],
              },
              "moodle-filter_glossary-autolinker": {
                requires: [
                  "base",
                  "node",
                  "io-base",
                  "json-parse",
                  "event-delegate",
                  "overlay",
                  "moodle-core-event",
                  "moodle-core-notification-alert",
                  "moodle-core-notification-exception",
                  "moodle-core-notification-ajaxexception",
                ],
              },
              "moodle-filter_mathjaxloader-loader": {
                requires: ["moodle-core-event"],
              },
              "moodle-editor_atto-editor": {
                requires: [
                  "node",
                  "transition",
                  "io",
                  "overlay",
                  "escape",
                  "event",
                  "event-simulate",
                  "event-custom",
                  "node-event-html5",
                  "node-event-simulate",
                  "yui-throttle",
                  "moodle-core-notification-dialogue",
                  "moodle-core-notification-confirm",
                  "moodle-editor_atto-rangy",
                  "handlebars",
                  "timers",
                  "querystring-stringify",
                ],
              },
              "moodle-editor_atto-plugin": {
                requires: [
                  "node",
                  "base",
                  "escape",
                  "event",
                  "event-outside",
                  "handlebars",
                  "event-custom",
                  "timers",
                  "moodle-editor_atto-menu",
                ],
              },
              "moodle-editor_atto-menu": {
                requires: [
                  "moodle-core-notification-dialogue",
                  "node",
                  "event",
                  "event-custom",
                ],
              },
              "moodle-editor_atto-rangy": { requires: [] },
              "moodle-report_eventlist-eventfilter": {
                requires: [
                  "base",
                  "event",
                  "node",
                  "node-event-delegate",
                  "datatable",
                  "autocomplete",
                  "autocomplete-filters",
                ],
              },
              "moodle-report_loglive-fetchlogs": {
                requires: [
                  "base",
                  "event",
                  "node",
                  "io",
                  "node-event-delegate",
                ],
              },
              "moodle-gradereport_grader-gradereporttable": {
                requires: [
                  "base",
                  "node",
                  "event",
                  "handlebars",
                  "overlay",
                  "event-hover",
                ],
              },
              "moodle-gradereport_history-userselector": {
                requires: [
                  "escape",
                  "event-delegate",
                  "event-key",
                  "handlebars",
                  "io-base",
                  "json-parse",
                  "moodle-core-notification-dialogue",
                ],
              },
              "moodle-tool_capability-search": { requires: ["base", "node"] },
              "moodle-tool_lp-dragdrop-reorder": {
                requires: ["moodle-core-dragdrop"],
              },
              "moodle-tool_monitor-dropdown": {
                requires: ["base", "event", "node"],
              },
              "moodle-assignfeedback_editpdf-editor": {
                requires: [
                  "base",
                  "event",
                  "node",
                  "io",
                  "graphics",
                  "json",
                  "event-move",
                  "event-resize",
                  "transition",
                  "querystring-stringify-simple",
                  "moodle-core-notification-dialog",
                  "moodle-core-notification-alert",
                  "moodle-core-notification-warning",
                  "moodle-core-notification-exception",
                  "moodle-core-notification-ajaxexception",
                ],
              },
              "moodle-atto_accessibilitychecker-button": {
                requires: ["color-base", "moodle-editor_atto-plugin"],
              },
              "moodle-atto_accessibilityhelper-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_align-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_bold-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_charmap-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_clear-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_collapse-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_emojipicker-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_emoticon-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_equation-button": {
                requires: [
                  "moodle-editor_atto-plugin",
                  "moodle-core-event",
                  "io",
                  "event-valuechange",
                  "tabview",
                  "array-extras",
                ],
              },
              "moodle-atto_h5p-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_html-beautify": {},
              "moodle-atto_html-button": {
                requires: [
                  "promise",
                  "moodle-editor_atto-plugin",
                  "moodle-atto_html-beautify",
                  "moodle-atto_html-codemirror",
                  "event-valuechange",
                ],
              },
              "moodle-atto_html-codemirror": {
                requires: ["moodle-atto_html-codemirror-skin"],
              },
              "moodle-atto_image-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_indent-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_italic-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_link-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_managefiles-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_managefiles-usedfiles": {
                requires: ["node", "escape"],
              },
              "moodle-atto_media-button": {
                requires: [
                  "moodle-editor_atto-plugin",
                  "moodle-form-shortforms",
                ],
              },
              "moodle-atto_noautolink-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_orderedlist-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_recordrtc-button": {
                requires: [
                  "moodle-editor_atto-plugin",
                  "moodle-atto_recordrtc-recording",
                ],
              },
              "moodle-atto_recordrtc-recording": {
                requires: ["moodle-atto_recordrtc-button"],
              },
              "moodle-atto_rtl-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_strike-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_subscript-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_superscript-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_table-button": {
                requires: [
                  "moodle-editor_atto-plugin",
                  "moodle-editor_atto-menu",
                  "event",
                  "event-valuechange",
                ],
              },
              "moodle-atto_title-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_underline-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_undo-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
              "moodle-atto_unorderedlist-button": {
                requires: ["moodle-editor_atto-plugin"],
              },
            },
          },
          gallery: {
            name: "gallery",
            base: "http:\/\/sundeo.pagekite.me\/lib\/yuilib\/gallery\/",
            combine: true,
            comboBase: "http:\/\/sundeo.pagekite.me\/theme\/yui_combo.php?",
            ext: false,
            root: "gallery\/1633508391\/",
            patterns: { "gallery-": { group: "gallery" } },
          },
        },
        modules: {
          core_filepicker: {
            name: "core_filepicker",
            fullpath:
              "http:\/\/sundeo.pagekite.me\/lib\/javascript.php\/1633508391\/repository\/filepicker.js",
            requires: [
              "base",
              "node",
              "node-event-simulate",
              "json",
              "async-queue",
              "io-base",
              "io-upload-iframe",
              "io-form",
              "yui2-treeview",
              "panel",
              "cookie",
              "datatable",
              "datatable-sort",
              "resize-plugin",
              "dd-plugin",
              "escape",
              "moodle-core_filepicker",
              "moodle-core-notification-dialogue",
            ],
          },
          core_comment: {
            name: "core_comment",
            fullpath:
              "http:\/\/sundeo.pagekite.me\/lib\/javascript.php\/1633508391\/comment\/comment.js",
            requires: [
              "base",
              "io-base",
              "node",
              "json",
              "yui2-animation",
              "overlay",
              "escape",
            ],
          },
          mathjax: {
            name: "mathjax",
            fullpath:
              "https:\/\/cdn.jsdelivr.net\/npm\/mathjax@2.7.9\/MathJax.js?delayStartupUntil=configured",
          },
          core_question_flags: {
            name: "core_question_flags",
            fullpath:
              "http:\/\/sundeo.pagekite.me\/lib\/javascript.php\/1633508391\/question\/flags.js",
            requires: ["base", "dom", "event-delegate", "io-base"],
          },
          core_question_engine: {
            name: "core_question_engine",
            fullpath:
              "http:\/\/sundeo.pagekite.me\/lib\/javascript.php\/1633508391\/question\/qengine.js",
            requires: ["node", "event"],
          },
          mod_quiz: {
            name: "mod_quiz",
            fullpath:
              "http:\/\/sundeo.pagekite.me\/lib\/javascript.php\/1633508391\/mod\/quiz\/module.js",
            requires: [
              "base",
              "dom",
              "event-delegate",
              "event-key",
              "core_question_engine",
              "moodle-core-formchangechecker",
            ],
          },
        },
      };
      M.yui.loader = { modules: {} };

      //]]>
    </script>
  </head>
  <body
    id="page-mod-quiz-attempt"
    class="
      format-topics
      path-mod path-mod-quiz
      chrome
      dir-ltr
      lang-en
      yui-skin-sam
      yui3-skin-sam
      sundeo.pagekite.me
      pagelayout-incourse
      course-2
      context-47
      cmid-11
      category-1
      drawer-open-left
    "
  >
    <div
      class="toast-wrapper mx-auto py-0 fixed-top"
      role="status"
      aria-live="polite"
    ></div>
    <div id="page-wrapper" class="d-print-block">
      <div>
        <a class="sr-only sr-only-focusable" href="#maincontent"
          >Skip to main content</a
        >
      </div>
      <script src="http://sundeo.pagekite.me//lib/javascript.php/1633508391/lib/babel-polyfill/polyfill.min.js"></script>
      <script src="http://sundeo.pagekite.me//lib/javascript.php/1633508391/lib/polyfills/polyfill.js"></script>
      <script src="http://sundeo.pagekite.me//theme/yui_combo.php?rollup/3.17.2/yui-moodlesimple-min.js"></script>
      <script src="http://sundeo.pagekite.me//lib/javascript.php/1633508391/lib/javascript-static.js"></script>
      <script>
        //<![CDATA[
        document.body.className += " jsenabled";
        //]]>
      </script>

      <div id="page" class="container-fluid d-print-block">
        <!-- This is the guy -->
        <div id="page-content" class="row pb-3 d-print-block">
          <div id="region-main-box" class="col-12">
            <section
              id="region-main"
              class="has-blocks mb-3"
              aria-label="Content"
            >
              <span class="notifications" id="user-notifications"></span>
              <div role="main">
                <span id="maincontent"></span>
                <div id="quiz-timer-wrapper" class="mb-2">
                  <div
                    id="quiz-timer"
                    class="quiz-timer-inner py-1 px-2 ml-auto"
                    role="timer"
                    aria-atomic="true"
                    aria-relevant="text"
                  >
                    Time left
                    <span id="quiz-time-left"></span>
                  </div>
                </div>
                <form
                  action="http://sundeo.pagekite.me//mod/quiz/processatt.php"
                  method="post"
                  enctype="multipart/form-data"
                  accept-charset="utf-8"
                  id="responseform"
                >
                  <div>
                    <!-- html returned starts here -->
                       ${_data}
                    
                    <!-- html data returned stops here -->
                    <script>
                      //<![CDATA[
                      var require = {
                        baseUrl:
                          "http://sundeo.pagekite.me/lib/requirejs.php/1633508391/",
                        // We only support AMD modules with an explicit define() statement.
                        enforceDefine: true,
                        skipDataMain: true,
                        waitSeconds: 0,

                        paths: {
                          jquery:
                            "http://sundeo.pagekite.me/lib/javascript.php/1633508391/lib/jquery/jquery-3.5.1.min",
                          jqueryui:
                            "http://sundeo.pagekite.me/lib/javascript.php/1633508391/lib/jquery/ui-1.12.1/jquery-ui.min",
                          jqueryprivate:
                            "http://sundeo.pagekite.me/lib/javascript.php/1633508391/lib/requirejs/jquery-private",
                        },

                        // Custom jquery config map.
                        map: {
                          // '*' means all modules will get 'jqueryprivate'
                          // for their 'jquery' dependency.
                          "*": { jquery: "jqueryprivate" },
                          // Stub module for 'process'. This is a workaround for a bug in MathJax (see MDL-60458).
                          "*": { process: "core/first" },

                          // 'jquery-private' wants the real jQuery module
                          // though. If this line was not here, there would
                          // be an unresolvable cyclic dependency.
                          jqueryprivate: { jquery: "jquery" },
                        },
                      };

                      //]]>
                    </script>
                    <script src="http://sundeo.pagekite.me/lib/javascript.php/1633508391/lib/requirejs/require.min.js"></script>
                    <script>
                      //<![CDATA[
                      M.util.js_pending("core/first");
                      require(["core/first"], function () {
                        require(["core/prefetch"]);
                        require(["media_videojs/loader"], function (loader) {
                          loader.setUp("en");
                        });
                        M.util.js_pending("qtype_multichoice/answers");
                        require(["qtype_multichoice/answers"], function (amd) {
                          amd.init("question-26-1");
                          M.util.js_complete("qtype_multichoice/answers");
                        });
                        M.util.js_pending("qtype_multichoice/clearchoice");
                        require(["qtype_multichoice/clearchoice"], function (
                          amd
                        ) {
                          amd.init("question-26-1", "q26:1_clearchoice");
                          M.util.js_complete("qtype_multichoice/clearchoice");
                        });
                        M.util.js_pending("core/log");
                        require(["core/log"], function (amd) {
                          amd.setConfig({ level: "warn" });
                          M.util.js_complete("core/log");
                        });
                        M.util.js_pending("core/page_global");
                        require(["core/page_global"], function (amd) {
                          amd.init();
                          M.util.js_complete("core/page_global");
                        });
                        M.util.js_complete("core/first");
                      });
                      //]]>
                    </script>
                    <script>
                      //<![CDATA[
                      M.str = {
                        moodle: {
                          lastmodified: "Last modified",
                          name: "Name",
                          error: "Error",
                          info: "Information",
                          yes: "Yes",
                          no: "No",
                          confirm: "Confirm",
                          areyousure: "Are you sure?",
                          closebuttontitle: "Close",
                          unknownerror: "Unknown error",
                          file: "File",
                          url: "URL",
                          collapseall: "Collapse all",
                          expandall: "Expand all",
                        },
                        
                        admin: {
                          confirmdeletecomments:
                            "You are about to delete comments, are you sure?",
                        },
                        debug: {
                          debuginfo: "Debug info",
                          line: "Line",
                          stacktrace: "Stack trace",
                        },
                        langconfig: { labelsep: ": " },
                      };
                      //]]>
                    </script>
                    <script>
                      //<![CDATA[
                      (function () {
                        Y.use(
                          "moodle-filter_mathjaxloader-loader",
                          function () {
                            M.filter_mathjaxloader.configure({
                              mathjaxconfig:
                                '\nMathJax.Hub.Config({\n    config: ["Accessible.js", "Safe.js"],\n    errorSettings: { message: ["!"] },\n    skipStartupTypeset: true,\n    messageStyle: "none"\n});\n',
                              lang: "en",
                            });
                          }
                        );
                        M.util.js_pending("random616093f5e233d1");
                        Y.on("domready", function () {
                          M.util.js_complete("init");
                          M.util.js_complete("random616093f5e233d1");
                        });
                      })();
                      //]]>
                    </script>
                    <div class="submitbtns">
                      <input
                        type="submit"
                        name="next"
                        value="Finish attempt ..."
                        class="mod_quiz-next-nav btn btn-primary"
                        id="mod_quiz-next-nav"
                      />
                    </div>
                    <input type="hidden" name="attempt" value="26" /><input
                      type="hidden"
                      name="thispage"
                      value="0"
                      id="followingpage"
                    /><input type="hidden" name="nextpage" value="-1" /><input
                      type="hidden"
                      name="timeup"
                      value="0"
                      id="timeup"
                    /><input
                      type="hidden"
                      name="sesskey"
                      value="iURXuOxycn"
                    /><input
                      type="hidden"
                      name="scrollpos"
                      value=""
                      id="scrollpos"
                    /><input type="hidden" name="slots" value="1,2,3,4" />
                  </div>
                </form>
                <div id="connection-error" style="display: none" role="alert">
                  <p>Network connection lost. (Autosave failed).</p>

                  <p>
                    Make a note of any responses entered on this page in the
                    last few minutes, then try to re-connect.
                  </p>

                  <p>
                    Once connection has been re-established, your responses
                    should be saved and this message will disappear.
                  </p>
                </div>
                <div id="connection-ok" style="display: none" role="alert">
                  <p>Network connection restored. You may continue safely.</p>
                </div>
              </div>
              <div class="mt-5 mb-1 activity-navigation container-fluid"></div>
            </section>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>

      """;
}
