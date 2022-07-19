.class final Lcom/alipay/mobile/antui/basic/AUNetErrorView$1;
.super Ljava/lang/Object;
.source "AUNetErrorView.java"

# interfaces
.implements Lcom/alipay/mobile/antui/lottie/LoadLottieCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/AUNetErrorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$1;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLottieLoadFinish(Lorg/json/JSONObject;I)V
    .locals 2
    .param p1, "lottieJson"    # Lorg/json/JSONObject;
    .param p2, "errorType"    # I

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$1;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mType:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$000(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$1;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    new-instance v1, Lcom/alipay/mobile/antui/basic/AUNetErrorView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/antui/basic/AUNetErrorView$1$1;-><init>(Lcom/alipay/mobile/antui/basic/AUNetErrorView$1;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->post(Ljava/lang/Runnable;)Z

    .line 75
    :cond_0
    return-void
.end method
