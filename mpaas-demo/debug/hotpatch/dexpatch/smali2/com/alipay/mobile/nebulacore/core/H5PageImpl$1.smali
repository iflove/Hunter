.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$1;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 215
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$1;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$1;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    # getter for: Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->n:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$000(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 220
    const/4 v0, 0x0

    return v0
.end method
