.class Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl$1;
.super Ljava/lang/Object;
.source "TinyAppStartupInterceptorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;->handlerStartParamsReady(Landroid/content/Context;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;

    .line 143
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl$1;->b:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl$1;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 149
    :cond_0
    return-void
.end method
