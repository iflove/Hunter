.class public Lcom/alipay/mobile/nebulaappproxy/tracedebug/plugin/H5TraceDebugPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5TraceDebugPlugin.java"


# static fields
.field public static final INITIAL_TRACE_DEBUG:Ljava/lang/String; = "initialTraceDebug"

.field public static final POST_METHOD_TRACE:Ljava/lang/String; = "postMethodTrace"

.field public static final TAG:Ljava/lang/String;

.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TRACEDEBUG_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/plugin/H5TraceDebugPlugin;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/plugin/H5TraceDebugPlugin;->TAG:Ljava/lang/String;

    .line 38
    const-string v0, "^\\[\"\\[WORKER] onerror\",(\\[\"(.*)\",\"(.*)\",(\\d+),(\\d+),(.*)])]$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/plugin/H5TraceDebugPlugin;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public getTraceDebugEnable()Z
    .locals 4

    .line 153
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/base/config/ConfigService;

    const/4 v2, 0x0

    .line 155
    .local v2, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 156
    const-string v1, "h5_tracedebug"

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "configTraceDebug":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 160
    const/4 v0, 0x0

    return v0

    .line 158
    :cond_1
    :goto_0
    return v0

    .line 165
    .end local v1    # "configTraceDebug":Ljava/lang/String;
    .end local v2    # "configService":Lcom/alipay/mobile/base/config/ConfigService;
    :cond_2
    goto :goto_1

    .line 163
    :catchall_0
    move-exception v1

    .line 164
    .local v1, "throwable":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/plugin/H5TraceDebugPlugin;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_1
    return v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 118
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0xc110024

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x7494a672

    if-eq v2, v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v2, "initialTraceDebug"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "postMethodTrace"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v5, :cond_3

    .line 146
    goto/16 :goto_2

    .line 130
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/plugin/H5TraceDebugPlugin;->getTraceDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 132
    .local v1, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "trace":Ljava/lang/String;
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/plugin/H5TraceDebugPlugin;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "H5TraceDebugPlugin trace: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-boolean v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c:Z

    if-eqz v2, :cond_4

    .line 135
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b()Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Ljava/lang/String;Z)V

    goto :goto_1

    .line 137
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b()Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Ljava/lang/String;)V

    .line 140
    .end local v0    # "trace":Ljava/lang/String;
    .end local v1    # "params":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    :goto_1
    return v5

    .line 120
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/plugin/H5TraceDebugPlugin;->getTraceDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 121
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "isTraceDebug":Ljava/lang/String;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/plugin/H5TraceDebugPlugin;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "H5TraceDebugPlugin isTraceDebug: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 124
    const-string v2, "TraceDebug mode enable"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b()Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .end local v0    # "isTraceDebug":Ljava/lang/String;
    :cond_7
    return v5

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/plugin/H5TraceDebugPlugin;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    return v0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 13
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string/jumbo v0, "type"

    .line 52
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;->isLiteProcess()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/plugin/H5TraceDebugPlugin;->getTraceDebugEnable()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 56
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "tinyDebugConsole"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "h5PageStarted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "exitSession"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v3, "h5PageFinished"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    :goto_0
    if-eqz v2, :cond_5

    const-string v0, "%s: %s"

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v4, :cond_2

    goto/16 :goto_1

    .line 100
    :cond_2
    :try_start_1
    sget-boolean v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c:Z

    if-eqz v1, :cond_7

    .line 101
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/plugin/H5TraceDebugPlugin;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/TDPageUtil;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b()Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->e()V

    goto/16 :goto_1

    .line 91
    :cond_3
    sget-boolean v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c:Z

    if-eqz v1, :cond_7

    .line 92
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/plugin/H5TraceDebugPlugin;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/TDPageUtil;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b()Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->d()V

    .line 94
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b()Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    move-result-object v0

    const-string v1, "imageScale"

    const-string v2, "(function() {\nfunction getElementsInDocument(selector) {\n/** @type {Array<Element>} */\nconst results = [];\n\n/** @param {NodeListOf<Element>} nodes */\nconst _findAllElements = nodes => {\nfor (let i = 0, el; el = nodes[i]; ++i) {\nif (!selector || el.matches(selector)) {\nresults.push(el);\n}\n// If the element has a shadow root, dig deeper.\nif (el.shadowRoot) {\n_findAllElements(el.shadowRoot.querySelectorAll(\'*\'));\n}\n}\n};\n_findAllElements(document.querySelectorAll(\'*\'));\n\nreturn results;\n}; // define function on page\nreturn (function collectImageElementInfo() {\n/** @param {Element} element */\nfunction getClientRect(element) {\nconst clientRect = element.getBoundingClientRect();\nreturn {\n// manually copy the properties because ClientRect does not JSONify\ntop: clientRect.top,\nbottom: clientRect.bottom,\nleft: clientRect.left,\nright: clientRect.right,\n};\n}\n\n/** @type {Array<Element>} */\n// @ts-ignore - added by getElementsInDocumentFnString\nconst allElements = getElementsInDocument();\nconst allImageElements = /** @type {Array<HTMLImageElement>} */ (allElements.filter(element => {\nreturn element.localName === \'img\';\n}));\n\n/** @type {Array<LH.Artifacts.SingleImageUsage>} */\nconst htmlImages = allImageElements.map(element => {\nconst computedStyle = window.getComputedStyle(element);\nreturn {\n// currentSrc used over src to get the url as determined by the browser\n// after taking into account srcset/media/sizes/etc.\nsrc: element.currentSrc,\nwidth: element.width,\nheight: element.height,\nclientWidth: element.clientWidth,\nclientHeight: element.clientHeight,\nclientRect: getClientRect(element),\nnaturalWidth: element.naturalWidth,\nnaturalHeight: element.naturalHeight,\nisCss: false,\nisPicture: !!element.parentElement && element.parentElement.tagName === \'PICTURE\',\nusesObjectFit: computedStyle.getPropertyValue(\'object-fit\') === \'cover\'\n|| computedStyle.getPropertyValue(\'object-fit\') === \'contain\',\n};\n});\n\n// Chrome normalizes background image style from getComputedStyle to be an absolute AntUrl in quotes.\n// Only match basic background-image: url(\"http://host/image.jpeg\") declarations\nconst CSS_URL_REGEX = /^url\\(\"([^\"]+)\"\\)$/;\n// Only find images that aren\'t specifically scaled\nconst CSS_SIZE_REGEX = /(auto|contain|cover)/;\n\nconst cssImages = allElements.reduce((images, element) => {\nconst style = window.getComputedStyle(element);\nif (!style.backgroundImage || !CSS_URL_REGEX.test(style.backgroundImage) ||\n!style.backgroundSize || !CSS_SIZE_REGEX.test(style.backgroundSize)) {\nreturn images;\n}\n\nconst imageMatch = style.backgroundImage.match(CSS_URL_REGEX);\n// @ts-ignore test() above ensures that there is a match.\nconst url = imageMatch[1];\n\n// Heuristic to filter out sprite sheets\nconst differentImages = images.filter(image => image.src !== url);\nif (images.length - differentImages.length > 2) {\nreturn differentImages;\n}\n\nimages.push({\nsrc: url,\nclientWidth: element.clientWidth,\nclientHeight: element.clientHeight,\nclientRect: getClientRect(element),\n// CSS Images do not expose natural size, we\'ll determine the size later\nnaturalWidth: Number.MAX_VALUE,\nnaturalHeight: Number.MAX_VALUE,\nisCss: true,\nisPicture: false,\nusesObjectFit: false,\n});\n\nreturn images;\n}, /** @type {Array<LH.Artifacts.SingleImageUsage>} */ ([]));\n\nreturn htmlImages.concat(cssImages);\n})();\n})()"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b()Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    move-result-object v0

    const-string v1, "domSize"

    const-string v2, "document.getElementsByTagName(\'*\').length"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b()Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    move-result-object v0

    const-string v1, "domWidthDepth"

    const-string v2, "(function() {\nfunction getOuterHTMLSnippet(element) {\nconst reOpeningTag = /^.*?>/;\nconst match = element.outerHTML.match(reOpeningTag);\nreturn match && match[0];\n};\nfunction createSelectorsLabel(element) {\nlet name = element.localName || \'\';\nconst idAttr = element.getAttribute && element.getAttribute(\'id\');\nif (idAttr) {\nname += `#${idAttr}`;\n}\n// svg elements return SVGAnimatedString for .className, which is an object.\n// Stringify classList instead.\nif (element.classList) {\nconst className = element.classList.toString();\nif (className) {\nname += `.${className.trim().replace(/\\s+/g, \'.\')}`;\n}\n} else if (ShadowRoot.prototype.isPrototypeOf(element)) {\nname += \'#shadow-root\';\n}\n\nreturn name;\n};\nfunction elementPathInDOM(element) {\nconst visited = new Set();\nconst path = [createSelectorsLabel(element)];\nlet node = element;\nwhile (node) {\nvisited.add(node);\n\n// Anchor elements have a .host property. Be sure we\'ve found a shadow root\n// host and not an anchor.\nif (ShadowRoot.prototype.isPrototypeOf(node)) {\nconst isShadowHost = node.host && node.localName !== \'a\';\nnode = isShadowHost ? node.host : node.parentElement;\n} else {\nconst isShadowHost = node.parentNode && node.parentNode.host &&\nnode.parentNode.localName !== \'a\';\nnode = isShadowHost ? node.parentNode.host : node.parentElement;\n}\n\nif (visited.has(node)) {\nnode = null;\n}\n\nif (node) {\npath.unshift(createSelectorsLabel(node));\n}\n}\nreturn path;\n};\nreturn (function getDOMStats(element, deep=true) {\nlet deepestNode = null;\nlet maxDepth = 0;\nlet maxWidth = 0;\nlet parentWithMostChildren = null;\n\n/**\n* @param {Element} element\n* @param {number} depth\n*/\nconst _calcDOMWidthAndHeight = function(element, depth=1) {\nif (depth > maxDepth) {\ndeepestNode = element;\nmaxDepth = depth;\n}\nif (element.children.length > maxWidth) {\nparentWithMostChildren = element;\nmaxWidth = element.children.length;\n}\n\nlet child = element.firstElementChild;\nwhile (child) {\n_calcDOMWidthAndHeight(child, depth + 1);\n// If node has shadow dom, traverse into that tree.\nif (deep && child.shadowRoot) {\n_calcDOMWidthAndHeight(child.shadowRoot, depth + 1);\n}\nchild = child.nextElementSibling;\n}\n\nreturn {maxDepth, maxWidth};\n};\n\nconst result = _calcDOMWidthAndHeight(element);\n\nreturn {\ndepth: {\nmax: result.maxDepth,\npathToElement: elementPathInDOM(deepestNode),\nsnippet: getOuterHTMLSnippet(deepestNode),\n},\nwidth: {\nmax: result.maxWidth,\npathToElement: elementPathInDOM(parentWithMostChildren),\nsnippet: getOuterHTMLSnippet(parentWithMostChildren),\n},\n};\n}(document.documentElement));\n})()"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 85
    :cond_4
    sget-boolean v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c:Z

    if-eqz v1, :cond_7

    .line 86
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/plugin/H5TraceDebugPlugin;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/TDPageUtil;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/WebProxyUtil;->a()Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/WebProxyUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/WebProxyUtil;->a(Lcom/alipay/mobile/h5container/api/H5Page;)V

    goto/16 :goto_2

    .line 58
    :cond_5
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 59
    .local v3, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v3, v1

    if-eqz v1, :cond_7

    .line 60
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    .line 61
    const-string v8, "channelId"

    invoke-static {v1, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 64
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 65
    .local v1, "content":Lcom/alibaba/fastjson/JSONObject;
    sget-object v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/plugin/H5TraceDebugPlugin;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "tinyDebugConsole --> %s"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "console_error"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 67
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/plugin/H5TraceDebugPlugin;->a:Ljava/util/regex/Pattern;

    const-string v8, "content"

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    move-object v8, v2

    .line 68
    .local v8, "matcher":Ljava/util/regex/Matcher;
    move-object v8, v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 69
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->obtain()Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;

    move-result-object v0

    move-object v9, v2

    .line 70
    .local v9, "traceDebugBean":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;
    move-object v9, v0

    const-string v10, "SCRIPT"

    iput-object v10, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->name:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b()Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->startTime:Ljava/lang/String;

    .line 72
    iget-object v0, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->startTime:Ljava/lang/String;

    iput-object v0, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->endTime:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 74
    .local v2, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const-string/jumbo v10, "message"

    const-string v11, "%s@(%s,%s)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v8, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v12, 0x4

    invoke-virtual {v8, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v7

    const/4 v7, 0x5

    invoke-virtual {v8, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v11, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v10, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v0, "page"

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->detail:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b()Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    move-result-object v0

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->covertToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Ljava/lang/String;Z)V

    .line 78
    invoke-virtual {v9}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .end local v1    # "content":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "matcher":Ljava/util/regex/Matcher;
    .end local v9    # "traceDebugBean":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;
    :cond_6
    goto :goto_2

    .line 110
    .end local v3    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_7
    :goto_1
    goto :goto_2

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/plugin/H5TraceDebugPlugin;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    return v0

    .line 53
    :cond_8
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x665ae272 -> :sswitch_3
        -0x3b57c68 -> :sswitch_2
        0x29d0cfe5 -> :sswitch_1
        0x52a8daa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 45
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 46
    const-string v0, "initialTraceDebug"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string/jumbo v0, "postMethodTrace"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 48
    return-void
.end method
