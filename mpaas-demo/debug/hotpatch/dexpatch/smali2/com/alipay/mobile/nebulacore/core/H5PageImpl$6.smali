.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$6;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "H5PageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;-><init>(Landroid/app/Activity;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V
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

    .line 512
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$6;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 515
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$6;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->m:J
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$102(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;J)J

    .line 516
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$6;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    # getter for: Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->m:J
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$100(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/h5container/api/H5Flag;->lastTouchTime:J

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDown "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$6;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    # getter for: Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->m:J
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$100(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PageImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const/4 v0, 0x0

    return v0
.end method
