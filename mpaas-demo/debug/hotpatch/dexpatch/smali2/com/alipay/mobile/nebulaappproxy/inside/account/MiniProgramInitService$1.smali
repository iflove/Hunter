.class Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService$1;
.super Ljava/lang/Object;
.source "MiniProgramInitService.java"

# interfaces
.implements Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;->addConfigChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;

    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 61
    .local v1, "keyList":Ljava/util/ArrayList;
    move-object v1, v0

    const-string v2, "h5_insideJsapiNeedAuthWhiteList"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-object v1
.end method

.method public onConfigChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 67
    const-string v0, "h5_insideJsapiNeedAuthWhiteList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;->reregisterInterceptPlugin()V
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;->access$000(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;)V

    .line 70
    :cond_0
    return-void
.end method
