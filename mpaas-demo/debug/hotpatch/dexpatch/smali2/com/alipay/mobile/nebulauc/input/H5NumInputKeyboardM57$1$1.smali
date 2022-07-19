.class Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1$1;
.super Ljava/lang/Object;
.source "H5NumInputKeyboardM57.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;->resizeAndHideKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;

    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1$1;->this$1:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1$1;->this$1:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;->this$0:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    # invokes: Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->sendBlurToFocusElement()V
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->access$000(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)V

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1$1;->this$1:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;->this$0:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    # invokes: Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->hideCustomKeyboard()Z
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->access$100(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)Z

    .line 71
    return-void
.end method
