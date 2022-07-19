.class public Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;
.super Ljava/lang/Object;
.source "CornerMarkingData.java"


# instance fields
.field public action:Ljava/lang/String;

.field public callback:Ljava/lang/String;

.field public exposed:Z

.field public icon:Ljava/lang/String;

.field public menuIconUrl:Ljava/lang/String;

.field public mid:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public noticeId:Ljava/lang/String;

.field public options:Ljava/lang/String;

.field public superscript:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJavaScript()Ljava/lang/String;
    .locals 4

    .line 26
    :try_start_0
    const-string v0, "javascript:(function(){function tinyApp_presetPopMenu_ready(callback){if(window.AlipayJSBridge){callback&&callback();}else{document.addEventListener(\'AlipayJSBridgeReady\',callback,false);}}tinyApp_presetPopMenu_ready(AlipayJSBridge.call(\'%s\', %s, %s));})();"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->action:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->options:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->callback:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    const-string v0, ""

    return-object v0
.end method
