.class final Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;
.super Ljava/lang/Object;
.source "ZoomRecyclerView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;B)V
    .locals 0

    .line 288
    invoke-direct {p0, p1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;-><init>(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleFactor:F
    invoke-static {v0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$200(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v0

    .line 298
    iget-object v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleFactor:F
    invoke-static {v1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$200(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    mul-float v2, v2, v3

    # setter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleFactor:F
    invoke-static {v1, v2}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$202(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;F)F

    .line 300
    iget-object v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleFactor:F
    invoke-static {v1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$200(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    # setter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleFactor:F
    invoke-static {v1, v2}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$202(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;F)F

    .line 302
    iget-object v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mViewWidth:F
    invoke-static {v1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$600(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mViewWidth:F
    invoke-static {v3}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$600(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleFactor:F
    invoke-static {v4}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$200(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v4

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    # setter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mMaxTranX:F
    invoke-static {v1, v2}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$502(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;F)F

    .line 303
    iget-object v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mViewHeight:F
    invoke-static {v1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$800(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mViewHeight:F
    invoke-static {v3}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$800(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleFactor:F
    invoke-static {v4}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$200(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v4

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    # setter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mMaxTranY:F
    invoke-static {v1, v2}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$702(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;F)F

    .line 305
    iget-object v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    # setter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleCenterX:F
    invoke-static {v1, v2}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$902(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;F)F

    .line 306
    iget-object v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    # setter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleCenterY:F
    invoke-static {v1, p1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$1002(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;F)F

    .line 308
    iget-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleCenterX:F
    invoke-static {p1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$900(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result p1

    iget-object v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleFactor:F
    invoke-static {v1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$200(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v1

    sub-float v1, v0, v1

    mul-float p1, p1, v1

    .line 309
    iget-object v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleCenterY:F
    invoke-static {v1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$1000(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleFactor:F
    invoke-static {v2}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$200(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v2

    sub-float/2addr v0, v2

    mul-float v1, v1, v0

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mTranX:F
    invoke-static {v0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$1100(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v2

    add-float/2addr v2, p1

    iget-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mTranY:F
    invoke-static {p1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$1200(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result p1

    add-float/2addr p1, v1

    # invokes: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->setTranslateXY(FF)V
    invoke-static {v0, v2, p1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$300(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;FF)V

    .line 313
    iget-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    const/4 v0, 0x1

    # setter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->isScaling:Z
    invoke-static {p1, v0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$402(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;Z)Z

    .line 314
    iget-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    invoke-virtual {p1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->invalidate()V

    .line 315
    return v0
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 292
    const/4 p1, 0x1

    return p1
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4

    .line 320
    iget-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleFactor:F
    invoke-static {p1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$200(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    .line 321
    iget-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mTranX:F
    invoke-static {p1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$1100(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleFactor:F
    invoke-static {v2}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$200(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    # setter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleCenterX:F
    invoke-static {p1, v1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$902(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;F)F

    .line 322
    iget-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mTranY:F
    invoke-static {p1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$1200(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleFactor:F
    invoke-static {v2}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$200(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v2

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    # setter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleCenterY:F
    invoke-static {p1, v1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$1002(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;F)F

    .line 323
    iget-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleCenterX:F
    invoke-static {p1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$900(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleCenterX:F
    invoke-static {v1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$900(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v1

    :goto_0
    # setter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleCenterX:F
    invoke-static {p1, v1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$902(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;F)F

    .line 324
    iget-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleCenterY:F
    invoke-static {p1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$1000(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleCenterY:F
    invoke-static {v1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$1000(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v2

    :goto_1
    # setter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleCenterY:F
    invoke-static {p1, v2}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$1002(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;F)F

    .line 325
    iget-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    # getter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->mScaleFactor:F
    invoke-static {p1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$200(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)F

    move-result v1

    # invokes: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->zoom(FF)V
    invoke-static {p1, v1, v0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$1300(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;FF)V

    .line 327
    :cond_2
    iget-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    const/4 v0, 0x0

    # setter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->isScaling:Z
    invoke-static {p1, v0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$402(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;Z)Z

    .line 328
    return-void
.end method
