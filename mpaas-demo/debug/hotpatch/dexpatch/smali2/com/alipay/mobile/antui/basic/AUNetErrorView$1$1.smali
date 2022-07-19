.class final Lcom/alipay/mobile/antui/basic/AUNetErrorView$1$1;
.super Ljava/lang/Object;
.source "AUNetErrorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/basic/AUNetErrorView$1;->onLottieLoadFinish(Lorg/json/JSONObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/alipay/mobile/antui/basic/AUNetErrorView$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/AUNetErrorView$1;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/antui/basic/AUNetErrorView$1;

    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$1$1;->b:Lcom/alipay/mobile/antui/basic/AUNetErrorView$1;

    iput-object p2, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$1$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 70
    const-string v0, "AUNetErrorView"

    const-string v1, "load lottie"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$1$1;->b:Lcom/alipay/mobile/antui/basic/AUNetErrorView$1;

    iget-object v0, v0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$1;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$1$1;->a:Lorg/json/JSONObject;

    # invokes: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->loadLottie(Lorg/json/JSONObject;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$100(Lcom/alipay/mobile/antui/basic/AUNetErrorView;Lorg/json/JSONObject;)V

    .line 72
    return-void
.end method
