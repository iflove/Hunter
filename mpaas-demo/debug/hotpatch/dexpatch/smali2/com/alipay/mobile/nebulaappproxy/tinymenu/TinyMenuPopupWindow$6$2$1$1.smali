.class Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1$1;
.super Ljava/lang/Object;
.source "TinyMenuPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1;

    .line 553
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1$1;->this$3:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1$1;->this$3:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1;->this$2:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;->this$1:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->internalShowMenu()V
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$1300(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)V

    .line 557
    return-void
.end method
