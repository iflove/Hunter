.class public Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;
.super Lcom/alipay/mobile/antui/basic/AUPopupWindow;
.source "AUToastPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final LONG_DELAY:I = 0xdac

.field public static final SHORT_DELAY:I = 0x7d0


# instance fields
.field private contentView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mShowTime:I

.field private mTipsText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;-><init>(Landroid/app/Activity;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "drawableId"    # I

    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUPopupWindow;-><init>()V

    .line 30
    const/16 v0, 0x9c4

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->mShowTime:I

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->mHandler:Landroid/os/Handler;

    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->mActivity:Landroid/app/Activity;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->initView(Landroid/app/Activity;I)V

    .line 42
    return-void
.end method

.method private initView(Landroid/app/Activity;I)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "drawableId"    # I

    .line 45
    const/4 v0, 0x0

    const/4 v1, -0x2

    if-nez p2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$layout;->au_toast:I

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->contentView:Landroid/view/View;

    .line 48
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->setWidth(I)V

    .line 49
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->setHeight(I)V

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->contentView:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/antui/R$id;->tip_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->mTipsText:Landroid/widget/TextView;

    goto :goto_0

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$layout;->au_toast_with_img:I

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->contentView:Landroid/view/View;

    .line 54
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->setWidth(I)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->setHeight(I)V

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->contentView:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/antui/R$id;->tip_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->mTipsText:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->contentView:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/antui/R$id;->index_drawable:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 58
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-static {p2}, Lcom/alipay/mobile/antui/utils/ToolUtils;->judgeRes(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "string"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    new-instance v1, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;

    new-instance v2, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;

    const/4 v3, -0x1

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {p1, v4}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4, p2}, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;-><init>(III)V

    invoke-direct {v1, p1, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;-><init>(Landroid/content/Context;Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;)V

    .line 60
    .local v1, "iconDrawable":Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    .end local v1    # "iconDrawable":Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 65
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->contentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->setContentView(Landroid/view/View;)V

    .line 66
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const-string v1, "AUToastPopupWindow"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "isShowing() == true"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :try_start_0
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AUPopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IllegalArgumentException: e"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    return-void

    .line 89
    :cond_2
    :goto_0
    const-string v0, "Activity is finish"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public run()V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->dismiss()V

    .line 71
    return-void
.end method

.method public setMessage(I)V
    .locals 1
    .param p1, "msg"    # I

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->mTipsText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", tipSrc:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "content":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AUToastPopupWindow "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AUToast"

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->mTipsText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public show()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->mActivity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->mShowTime:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    return-void

    .line 104
    :cond_1
    :goto_0
    const-string v0, "AUToastPopupWindow"

    const-string v1, "Activity is finish"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public showTime(I)V
    .locals 0
    .param p1, "time"    # I

    .line 84
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->mShowTime:I

    .line 85
    return-void
.end method
