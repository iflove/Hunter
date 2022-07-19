.class public Lcom/alipay/mobile/antui/pop/AUPopFloatView;
.super Lcom/alipay/mobile/antui/basic/AULinearLayout;
.source "AUPopFloatView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/pop/AUPopFloatView$AUPopFloatEventListener;
    }
.end annotation


# static fields
.field public static final BLACK_STYLE:I = 0x1

.field public static final BLUE_STYLE:I = 0x0

.field private static final MAX_CLICK_DISTANCE:I = 0x2

.field private static final MAX_CLICK_DURATION:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "AUPopFloatView"


# instance fields
.field private currentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private currentY:I

.field private deltaX:I

.field private deltaY:I

.field private eventListener:Lcom/alipay/mobile/antui/pop/AUPopFloatView$AUPopFloatEventListener;

.field private layoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private pressDownX:F

.field private pressDownY:F

.field private removeDistance:I

.field private screenHeight:I

.field private stayedWithinClickDistance:Z

.field private titleTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private touchDownTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->currentY:I

    .line 56
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->init(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->currentY:I

    .line 61
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->init(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->currentY:I

    .line 66
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->init(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->currentY:I

    .line 71
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method private distance(Landroid/content/Context;FFFF)F
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F

    .line 248
    sub-float v0, p2, p4

    .line 249
    .local v0, "dx":F
    sub-float v1, p3, p5

    .line 250
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 251
    .local v2, "distanceInPx":F
    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->pxToDp(Landroid/content/Context;F)F

    move-result v3

    return v3
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->setOrientation(I)V

    .line 76
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->setGravity(I)V

    .line 77
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->au_pop_float_bg_blue:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->setBackgroundResource(I)V

    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_pop_float_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 80
    invoke-static {p1}, Lcom/alipay/mobile/antui/utils/ToolUtils;->getScreenWidth_Height(Landroid/content/Context;)[I

    move-result-object v0

    .line 81
    .local v0, "screenWidth_height":[I
    aget v1, v0, v2

    iput v1, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->screenHeight:I

    .line 82
    int-to-float v1, v1

    const v2, 0x3f451eb8    # 0.77f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->currentY:I

    .line 83
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->au_pop_float_view_to_remove_distance:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->removeDistance:I

    .line 84
    sget v1, Lcom/alipay/mobile/antui/R$id;->title:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->titleTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 85
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    const/4 v2, 0x3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 87
    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->currentY:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 88
    invoke-virtual {p0, p0}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    return-void
.end method

.method private pxToDp(Landroid/content/Context;F)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "px"    # F

    .line 255
    invoke-static {p1, p2}, Lcom/alipay/mobile/antui/utils/DensityUtil;->px2dip(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method


# virtual methods
.method public attachToActivity(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 114
    const-string v0, "AUPopFloatView"

    if-nez p1, :cond_0

    .line 115
    const-string v1, "attachToActivity:activity is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attachToActivity,\u5df2\u7ecf\u6dfb\u52a0\u5230\u6307\u5b9aActivity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void

    .line 124
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 125
    .local v2, "decorView":Landroid/view/View;
    move-object v2, v1

    instance-of v1, v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, v2, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->removeFromParent()V

    .line 127
    move-object v1, v2

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, p0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->bringToFront()V

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "attachToActivity:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->currentActivity:Ljava/lang/ref/WeakReference;

    return-void

    .line 132
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "attachToActivity\u64cd\u4f5c\u4e0d\u6210\u529f\uff0cactivity\u89c6\u56fe\u672a\u6b63\u5e38\u521d\u59cb\u5316\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v2    # "decorView":Landroid/view/View;
    return-void

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "attachToActivity\u51fa\u9519\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v1    # "ex":Ljava/lang/Exception;
    return-void
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 148
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 180
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto/16 :goto_2

    .line 193
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->stayedWithinClickDistance:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->pressDownX:F

    iget v6, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->pressDownY:F

    .line 194
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    .line 193
    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->distance(Landroid/content/Context;FFFF)F

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 195
    iput-boolean v2, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->stayedWithinClickDistance:Z

    .line 197
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 198
    iget v3, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->deltaX:I

    sub-int/2addr v0, v3

    move v3, v2

    .line 200
    .local v3, "leftMargin":I
    move v3, v0

    if-gtz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 206
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 207
    iget v2, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->deltaY:I

    sub-int/2addr v0, v2

    .line 208
    .local v0, "topMargin":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/antui/utils/AUStatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    if-le v2, v0, :cond_3

    .line 209
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/antui/utils/AUStatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_1

    .line 210
    :cond_3
    iget v2, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->screenHeight:I

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v2, v4

    if-le v0, v2, :cond_4

    .line 211
    iget v2, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->screenHeight:I

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->getMeasuredHeight()I

    move-result v4

    sub-int v0, v2, v4

    .line 213
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 215
    iget-object v2, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    goto/16 :goto_2

    .line 219
    .end local v0    # "topMargin":I
    .end local v3    # "leftMargin":I
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->touchDownTimestamp:J

    sub-long/2addr v3, v5

    .line 220
    const-wide/16 v5, 0xc8

    const-string v0, "AUPopFloatView"

    cmp-long v7, v3, v5

    if-gez v7, :cond_6

    iget-boolean v3, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->stayedWithinClickDistance:Z

    if-eqz v3, :cond_6

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u89e6\u53d1onclick\u4e8b\u4ef6:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->eventListener:Lcom/alipay/mobile/antui/pop/AUPopFloatView$AUPopFloatEventListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v3, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->eventListener:Lcom/alipay/mobile/antui/pop/AUPopFloatView$AUPopFloatEventListener;

    if-eqz v3, :cond_6

    .line 223
    invoke-interface {v3, p0}, Lcom/alipay/mobile/antui/pop/AUPopFloatView$AUPopFloatEventListener;->onClick(Landroid/view/View;)V

    .line 227
    :cond_6
    iget-object v3, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v4, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->removeDistance:I

    add-int/2addr v3, v4

    if-gez v3, :cond_8

    .line 228
    iget-object v3, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->eventListener:Lcom/alipay/mobile/antui/pop/AUPopFloatView$AUPopFloatEventListener;

    if-eqz v3, :cond_7

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u89e6\u53d1onRemove\u4e8b\u4ef6:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->eventListener:Lcom/alipay/mobile/antui/pop/AUPopFloatView$AUPopFloatEventListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->eventListener:Lcom/alipay/mobile/antui/pop/AUPopFloatView$AUPopFloatEventListener;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/antui/pop/AUPopFloatView$AUPopFloatEventListener;->onRemove(Landroid/view/View;)V

    .line 232
    :cond_7
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->removeFromParent()V

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    .line 235
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 182
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->pressDownX:F

    .line 183
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->pressDownY:F

    .line 185
    iget v0, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->pressDownX:F

    iget-object v2, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->deltaX:I

    .line 186
    iget v0, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->pressDownY:F

    iget-object v2, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->deltaY:I

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->touchDownTimestamp:J

    .line 189
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->stayedWithinClickDistance:Z

    .line 190
    nop

    .line 244
    :goto_2
    return v1
.end method

.method public removeFromParent()V
    .locals 5

    const-string v0, "AUPopFloatView"

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 157
    .local v3, "parent":Landroid/view/ViewParent;
    move-object v3, v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "removeFromParent:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    move-object v1, v3

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 161
    :cond_0
    iput-object v2, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->currentActivity:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v3    # "parent":Landroid/view/ViewParent;
    return-void

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "attachToActivity\u51fa\u9519\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .end local v1    # "ex":Ljava/lang/Exception;
    return-void
.end method

.method public setAUPopFloatEventListener(Lcom/alipay/mobile/antui/pop/AUPopFloatView$AUPopFloatEventListener;)V
    .locals 0
    .param p1, "eventListener"    # Lcom/alipay/mobile/antui/pop/AUPopFloatView$AUPopFloatEventListener;

    .line 264
    iput-object p1, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->eventListener:Lcom/alipay/mobile/antui/pop/AUPopFloatView$AUPopFloatEventListener;

    .line 265
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    const-string v0, "AUPopFloatView"

    const-string/jumbo v1, "setOnClickListener(OnClickListener listener)\u65b9\u6cd5\u4e0d\u53ef\u7528"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public setStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .line 92
    if-nez p1, :cond_0

    .line 93
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->au_pop_float_bg_blue:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->setBackgroundResource(I)V

    return-void

    .line 94
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 95
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->au_pop_float_bg_black:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->setBackgroundResource(I)V

    .line 97
    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopFloatView;->titleTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method
