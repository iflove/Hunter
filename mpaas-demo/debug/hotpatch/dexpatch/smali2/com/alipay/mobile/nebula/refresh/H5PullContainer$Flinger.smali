.class Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;
.super Ljava/lang/Object;
.source "H5PullContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/refresh/H5PullContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Flinger"
.end annotation


# instance fields
.field private finished:Z

.field private lastScrollY:I

.field private scroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)V
    .locals 1

    .line 415
    iput-object p1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->scroller:Landroid/widget/Scroller;

    .line 417
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->finished:Z

    .line 418
    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    .line 464
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->finished:Z

    return v0
.end method

.method public recover(I)V
    .locals 8
    .param p1, "offset"    # I

    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 439
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->lastScrollY:I

    .line 440
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    # setter for: Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->offsets:I
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->access$302(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;I)I

    .line 441
    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->finished:Z

    .line 442
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->scroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x258

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 443
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    return-void

    .line 444
    :catchall_0
    move-exception v0

    .line 445
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5PullContainer"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method public run()V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 423
    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    iget v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->lastScrollY:I

    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    sub-int/2addr v1, v2

    # invokes: Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->moveOffset(I)Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->access$100(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;I)Z

    .line 425
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->lastScrollY:I

    .line 426
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 428
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->finished:Z

    .line 429
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 430
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    # getter for: Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->access$200(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    # getter for: Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->access$200(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;->onFinish()V

    .line 434
    :cond_1
    return-void
.end method

.method public scroll(II)V
    .locals 8
    .param p1, "offset"    # I
    .param p2, "duration"    # I

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->lastScrollY:I

    .line 454
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    # setter for: Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->offsets:I
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->access$302(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;I)I

    .line 455
    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->finished:Z

    .line 456
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->scroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 457
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    return-void

    .line 458
    :catchall_0
    move-exception v0

    .line 459
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5PullContainer"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 461
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method
