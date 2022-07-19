.class public Lcom/alipay/mobile/antui/dialog/AURecordFloatTip;
.super Ljava/lang/Object;
.source "AURecordFloatTip.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private final floatTip:Landroid/view/View;

.field private final iconView:Lcom/alipay/mobile/antui/basic/AUImageView;

.field private final mContentView:Landroid/widget/FrameLayout;

.field private final tipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/dialog/AURecordFloatTip;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "tip"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AURecordFloatTip;->activity:Landroid/app/Activity;

    .line 32
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AURecordFloatTip;->mContentView:Landroid/widget/FrameLayout;

    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->msg_record_prompt:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AURecordFloatTip;->floatTip:Landroid/view/View;

    .line 34
    sget v1, Lcom/alipay/mobile/antui/R$id;->voice_prompt_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUImageView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AURecordFloatTip;->iconView:Lcom/alipay/mobile/antui/basic/AUImageView;

    .line 35
    sget v2, Lcom/alipay/mobile/antui/R$id;->voice_prompt_msg:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AURecordFloatTip;->tipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 36
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->voice_frame:I

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUImageView;->setBackgroundResource(I)V

    .line 38
    nop

    .line 39
    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AURecordFloatTip;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 40
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AURecordFloatTip;->mContentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AURecordFloatTip;->floatTip:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AURecordFloatTip;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 63
    :cond_0
    return-void
.end method

.method public getIconView()Lcom/alipay/mobile/antui/basic/AUImageView;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AURecordFloatTip;->iconView:Lcom/alipay/mobile/antui/basic/AUImageView;

    return-object v0
.end method

.method public getTipTextView()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AURecordFloatTip;->tipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public show()V
    .locals 4

    .line 46
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AURecordFloatTip;->activity:Landroid/app/Activity;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lcom/alipay/mobile/antui/dialog/AURecordFloatTip;->activity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 47
    .local v1, "flp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v1, v0

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AURecordFloatTip;->mContentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AURecordFloatTip;->floatTip:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AURecordFloatTip;->mContentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AURecordFloatTip;->floatTip:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AURecordFloatTip;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 53
    :cond_0
    return-void
.end method
