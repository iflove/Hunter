.class public Lcom/alipay/mobile/antui/dialog/AUImageDialog;
.super Lcom/alipay/mobile/antui/basic/AUDialog;
.source "AUImageDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;,
        Lcom/alipay/mobile/antui/dialog/AUImageDialog$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field static mInstance:Lcom/alipay/mobile/antui/dialog/AUImageDialog;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static tempContext:Landroid/content/Context;

.field private static times:I


# instance fields
.field private bottomLine:Landroid/widget/ImageView;

.field private canceledOnTouch:Z

.field private closeImageView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private confirmBtn:Lcom/alipay/mobile/antui/basic/AUButton;

.field private dialogBg:Landroid/widget/LinearLayout;

.field private imageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

.field private inflater:Landroid/view/LayoutInflater;

.field private infoHead:Landroid/widget/RelativeLayout;

.field private isShow:Z

.field private itemListener:Lcom/alipay/mobile/antui/dialog/AUImageDialog$OnItemClickListener;

.field private listAdapter:Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;

.field private listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

.field private mCloseBtnClickListener:Landroid/view/View$OnClickListener;

.field private mConfirmStr:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field private mLottieLayout:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

.field private mTimeColor:Ljava/lang/String;

.field public mTimer:Ljava/util/Timer;

.field private mTimerListener:Lcom/alipay/mobile/antui/api/TimerListener;

.field private mTimerTask:Ljava/util/TimerTask;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private titleTextView_1:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

.field private titleTextView_2:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

.field private titleTextView_3:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

.field private usdAnim:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->times:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 123
    sget v0, Lcom/alipay/mobile/antui/R$style;->noTitleTransBgDialogStyle:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUDialog;-><init>(Landroid/content/Context;I)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->canceledOnTouch:Z

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->usdAnim:Z

    .line 64
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mTimer:Ljava/util/Timer;

    .line 69
    new-instance v1, Lcom/alipay/mobile/antui/dialog/AUImageDialog$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog$1;-><init>(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)V

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->onClickListener:Landroid/view/View$OnClickListener;

    .line 616
    new-instance v1, Lcom/alipay/mobile/antui/dialog/AUImageDialog$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog$4;-><init>(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)V

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mHandler:Landroid/os/Handler;

    .line 124
    sget-object v1, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "new AUImageDialog"

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sput-object p1, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->tempContext:Landroid/content/Context;

    .line 126
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->inflater:Landroid/view/LayoutInflater;

    .line 128
    sget v2, Lcom/alipay/mobile/antui/R$layout;->au_image_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 129
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/alipay/mobile/antui/R$id;->action_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->dialogBg:Landroid/widget/LinearLayout;

    .line 130
    sget v2, Lcom/alipay/mobile/antui/R$id;->title_txt_1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->titleTextView_1:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 131
    sget v2, Lcom/alipay/mobile/antui/R$id;->title_txt_2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->titleTextView_2:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 132
    sget v2, Lcom/alipay/mobile/antui/R$id;->title_txt_3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->titleTextView_3:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 133
    sget v2, Lcom/alipay/mobile/antui/R$id;->info_head:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->infoHead:Landroid/widget/RelativeLayout;

    .line 134
    sget v2, Lcom/alipay/mobile/antui/R$id;->info_logo:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AURoundImageView;

    iput-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->imageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    .line 135
    sget v2, Lcom/alipay/mobile/antui/R$id;->info_logo_lottie:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    iput-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mLottieLayout:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    .line 136
    sget v2, Lcom/alipay/mobile/antui/R$id;->bottom_line:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->bottomLine:Landroid/widget/ImageView;

    .line 137
    sget v2, Lcom/alipay/mobile/antui/R$id;->btn_close:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->closeImageView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 138
    sget v2, Lcom/alipay/mobile/antui/R$id;->btn_confirm:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUButton;

    iput-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->confirmBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    .line 140
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->setContentView(Landroid/view/View;)V

    .line 141
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->setCanceledOnTouchOutside(Z)V

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->closeImageView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    new-instance v2, Lcom/alipay/mobile/antui/dialog/AUImageDialog$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog$2;-><init>(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mCloseBtnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)Lcom/alipay/mobile/antui/basic/AUButton;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->confirmBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mTimeColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 48
    sget v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->times:I

    return v0
.end method

.method static synthetic access$310()I
    .locals 2

    .line 48
    sget v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->times:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->times:I

    return v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mConfirmStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    .line 48
    invoke-direct {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->cancelTimer()V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    .line 48
    invoke-direct {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->callTimeFinish()V

    return-void
.end method

.method static synthetic access$700(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)Lcom/alipay/mobile/antui/dialog/AUImageDialog$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->itemListener:Lcom/alipay/mobile/antui/dialog/AUImageDialog$OnItemClickListener;

    return-object v0
.end method

.method private callTimeFinish()V
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mTimerListener:Lcom/alipay/mobile/antui/api/TimerListener;

    if-eqz v0, :cond_0

    .line 662
    invoke-interface {v0}, Lcom/alipay/mobile/antui/api/TimerListener;->onFinish()V

    .line 664
    :cond_0
    return-void
.end method

.method private cancelTimer()V
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 669
    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mTimer:Ljava/util/Timer;

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 673
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 674
    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mTimerTask:Ljava/util/TimerTask;

    .line 676
    :cond_1
    return-void
.end method

.method private filterColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "color"    # Ljava/lang/String;

    .line 498
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<font color=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'>%s</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 501
    :cond_0
    const-string v0, "%s"

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/antui/dialog/AUImageDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    if-nez p0, :cond_0

    .line 101
    sget-object v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->TAG:Ljava/lang/String;

    const-string v1, "Context == null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    const-class v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mInstance:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    if-nez v1, :cond_1

    .line 106
    sget-object v1, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "new instance"

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v1, Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mInstance:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    goto :goto_0

    .line 108
    :cond_1
    sget-object v1, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->tempContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    sget-object v1, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->TAG:Ljava/lang/String;

    const-string v2, "Context changed ,reset instance"

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->resetParam(Landroid/content/Context;)V

    .line 112
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    sget-object v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mInstance:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    return-object v0

    .line 112
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static resetParam(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 117
    sget-object v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mInstance:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->realDismiss()V

    .line 118
    sput-object p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->tempContext:Landroid/content/Context;

    .line 119
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mInstance:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    .line 120
    return-void
.end method

.method private setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 691
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 692
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 694
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 696
    return-void
.end method

.method private timerTask(I)V
    .locals 7
    .param p1, "seconds"    # I

    .line 641
    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->times:I

    .line 643
    invoke-direct {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->cancelTimer()V

    .line 644
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mTimer:Ljava/util/Timer;

    .line 645
    new-instance v2, Lcom/alipay/mobile/antui/dialog/AUImageDialog$5;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog$5;-><init>(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)V

    iput-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mTimerTask:Ljava/util/TimerTask;

    .line 657
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mTimer:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 658
    return-void
.end method


# virtual methods
.method public changeComfirmBtnStyleToMain()V
    .locals 5

    .line 699
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getConfirmBtn()Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->au_button_bg_for_main:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 700
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getConfirmBtn()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->au_button_textcolor_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 701
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->bottomLine:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 702
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getConfirmBtn()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getConfirmBtn()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 704
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v1, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->image_dialog_main_button_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 705
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE3:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 707
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE3:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 705
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 709
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->dialogBg:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE4:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 711
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 4

    .line 565
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->usdAnim:Z

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$anim;->slide_out_bottom:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 568
    .local v2, "animation":Landroid/view/animation/Animation;
    move-object v2, v0

    new-instance v3, Lcom/alipay/mobile/antui/dialog/AUImageDialog$3;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog$3;-><init>(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 583
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->dialogBg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->isShow:Z

    .line 585
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 586
    sput-object v1, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mInstance:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    .line 587
    .end local v2    # "animation":Landroid/view/animation/Animation;
    return-void

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->realDismiss()V

    .line 590
    return-void
.end method

.method public dismissWithoutAnim()V
    .locals 2

    .line 509
    sget-object v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->TAG:Ljava/lang/String;

    const-string v1, "dismissWithoutAnim"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->isShow:Z

    .line 511
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mInstance:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    .line 512
    sput-object v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->tempContext:Landroid/content/Context;

    .line 513
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 516
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AUDialog;->dismiss()V

    .line 517
    return-void
.end method

.method public getBottomLine()Landroid/widget/ImageView;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->bottomLine:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getConfirmBtn()Landroid/widget/Button;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->confirmBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    return-object v0
.end method

.method public getDefaultTimeColorStr()Ljava/lang/String;
    .locals 1

    .line 494
    const-string v0, "#D83B1E"

    return-object v0
.end method

.method public getLogoImageView()Landroid/widget/ImageView;
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->imageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    return-object v0
.end method

.method public getLottieLayout()Lcom/alipay/mobile/antui/lottie/AULottieLayout;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mLottieLayout:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    return-object v0
.end method

.method public getSubTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->titleTextView_2:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    return-object v0
.end method

.method public getThirdTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->titleTextView_3:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->titleTextView_1:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    return-object v0
.end method

.method public isCanceledOnTouch()Z
    .locals 1

    .line 603
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->canceledOnTouch:Z

    return v0
.end method

.method public isUsdAnim()Z
    .locals 1

    .line 361
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->usdAnim:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 162
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUDialog;->onCreate(Landroid/os/Bundle;)V

    .line 163
    return-void
.end method

.method protected realDismiss()V
    .locals 2

    .line 593
    sget-object v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "realDismiss"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->isShow:Z

    .line 595
    invoke-direct {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->cancelTimer()V

    .line 596
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mInstance:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    .line 597
    sput-object v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->tempContext:Landroid/content/Context;

    .line 598
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AUDialog;->dismiss()V

    .line 599
    return-void
.end method

.method public setBackgroundTransparency(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->dialogBg:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 319
    :cond_0
    return-void
.end method

.method public setBigImageResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->imageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setImageResource(I)V

    .line 299
    :cond_0
    return-void
.end method

.method public setButtonListInfo(Ljava/util/List;Lcom/alipay/mobile/antui/dialog/AUImageDialog$OnItemClickListener;)V
    .locals 5
    .param p1, "buttonListInfo"    # Ljava/util/List;
    .param p2, "listener"    # Lcom/alipay/mobile/antui/dialog/AUImageDialog$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/antui/dialog/AUImageDialog$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 720
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->bottomLine:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->confirmBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUButton;->setVisibility(I)V

    .line 722
    iput-object p2, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->itemListener:Lcom/alipay/mobile/antui/dialog/AUImageDialog$OnItemClickListener;

    .line 723
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    if-nez v0, :cond_0

    .line 724
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    .line 725
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setBackgroundColor(I)V

    .line 726
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_DIALOG_DIVIDER_COLOR:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 727
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setDividerHeight(I)V

    .line 728
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;-><init>(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->listAdapter:Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;

    .line 729
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 731
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    .line 732
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v2, v0

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->bottomLine:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 733
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->dialogBg:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 735
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->listView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->listAdapter:Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;->setData(Ljava/util/List;)V

    .line 737
    return-void
.end method

.method public setCanceledOnTouch(Z)V
    .locals 0
    .param p1, "canceledOnTouch"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 613
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->canceledOnTouch:Z

    .line 614
    return-void
.end method

.method public setCloseBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "mCloseBtnClickListener"    # Landroid/view/View$OnClickListener;

    .line 157
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mCloseBtnClickListener:Landroid/view/View$OnClickListener;

    .line 158
    return-void
.end method

.method public setCloseBtnColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 549
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->closeImageView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 550
    return-void
.end method

.method public setCloseButtonVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 379
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->closeImageView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 382
    :cond_0
    return-void
.end method

.method public setConfirmBtnText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->confirmBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    if-eqz v0, :cond_1

    .line 391
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setText(Ljava/lang/CharSequence;)V

    .line 393
    :cond_1
    return-void
.end method

.method public setImageMatchType()V
    .locals 5

    .line 531
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->infoHead:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    .line 532
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 533
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x431c0000    # 156.0f

    invoke-static {v0, v3}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 534
    const/4 v0, 0x0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 536
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->imageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/antui/R$dimen;->AU_CORNER3:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setRadiusTopLeft(I)V

    .line 537
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->imageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/antui/R$dimen;->AU_CORNER3:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setRadiusTopRight(I)V

    .line 538
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->imageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setRounded(Z)V

    .line 540
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->setCloseBtnColor(I)V

    .line 541
    return-void
.end method

.method public setImageSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 559
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->imageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 560
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->imageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 561
    return-void
.end method

.method public setImageSmallType()V
    .locals 2

    .line 523
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->image_dialog_image_size_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 524
    .local v0, "size":I
    invoke-virtual {p0, v0, v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->setImageSize(II)V

    .line 525
    return-void
.end method

.method public setLogoBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->imageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    if-eqz v0, :cond_0

    .line 277
    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 278
    :cond_0
    return-void
.end method

.method public setLogoBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 307
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->imageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setBackgroundColor(I)V

    .line 309
    :cond_0
    return-void
.end method

.method public setLogoBackgroundResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->imageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setBackgroundResource(I)V

    .line 288
    :cond_0
    return-void
.end method

.method public setLogoDefaultLoading()V
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->imageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    if-eqz v0, :cond_0

    .line 326
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$color;->AU_COLOR8:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    :cond_0
    return-void
.end method

.method public setLogoLottieSrc(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->setLogoLottieSrc(Lorg/json/JSONObject;Z)V

    .line 337
    return-void
.end method

.method public setLogoLottieSrc(Lorg/json/JSONObject;Z)V
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isLoop"    # Z

    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->imageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mLottieLayout:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mLottieLayout:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->loop(Z)V

    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mLottieLayout:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setAnimationSource(Lorg/json/JSONObject;)V

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mLottieLayout:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->playAnimation()V

    .line 351
    return-void
.end method

.method public setOnConfirmBtnClick(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .line 684
    if-eqz p1, :cond_0

    .line 685
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->onClickListener:Landroid/view/View$OnClickListener;

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->confirmBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    return-void
.end method

.method public setOnConfirmBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .line 409
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->onClickListener:Landroid/view/View$OnClickListener;

    .line 410
    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->titleTextView_2:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    return-void
.end method

.method public setSubTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->titleTextView_2:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setTextColor(I)V

    .line 246
    :cond_0
    return-void
.end method

.method public setSubTitleTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->titleTextView_2:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setTextSize(F)V

    .line 235
    :cond_0
    return-void
.end method

.method public setSubTitleTextVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->titleTextView_2:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setVisibility(I)V

    .line 204
    :cond_0
    return-void
.end method

.method public setThirdTitleText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->titleTextView_3:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_0
    return-void
.end method

.method public setThirdTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->titleTextView_3:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setTextColor(I)V

    .line 268
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->titleTextView_1:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->titleTextView_1:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setTextColor(I)V

    .line 215
    :cond_0
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->titleTextView_1:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setTextSize(F)V

    .line 182
    :cond_0
    return-void
.end method

.method public setTitleTextVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->titleTextView_1:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setVisibility(I)V

    .line 193
    :cond_0
    return-void
.end method

.method public setUsdAnim(Z)V
    .locals 0
    .param p1, "usdAnim"    # Z

    .line 370
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->usdAnim:Z

    .line 371
    return-void
.end method

.method public show()V
    .locals 4

    .line 414
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->isShow:Z

    if-eqz v0, :cond_0

    .line 415
    return-void

    .line 417
    :cond_0
    sget-object v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->TAG:Ljava/lang/String;

    const-string v1, "AUImageDialog show"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AUDialog;->show()V

    .line 419
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->usdAnim:Z

    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$anim;->slide_in_bottom:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 422
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->dialogBg:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 419
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_1
    const/4 v0, 0x0

    .line 424
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->isShow:Z

    .line 426
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 427
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 428
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    move-object v0, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->image_dialog_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 429
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 430
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mLottieLayout:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 431
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mLottieLayout:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->playAnimation()V

    .line 433
    :cond_3
    return-void
.end method

.method public showWithTimer(ILandroid/view/View$OnClickListener;Lcom/alipay/mobile/antui/api/TimerListener;)V
    .locals 6
    .param p1, "seconds"    # I
    .param p2, "clickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "timerListener"    # Lcom/alipay/mobile/antui/api/TimerListener;

    .line 485
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getDefaultTimeColorStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->try_again_once:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->showWithTimer(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/alipay/mobile/antui/api/TimerListener;)V

    .line 486
    return-void
.end method

.method public showWithTimer(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/alipay/mobile/antui/api/TimerListener;)V
    .locals 3
    .param p1, "seconds"    # I
    .param p2, "tickColor"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "clickListener"    # Landroid/view/View$OnClickListener;
    .param p5, "timerListener"    # Lcom/alipay/mobile/antui/api/TimerListener;

    .line 466
    if-gez p1, :cond_0

    .line 467
    return-void

    .line 469
    :cond_0
    sget-object v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AUImageDialog showWithTimer : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->tempContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->setCloseButtonVisibility(I)V

    .line 472
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->setSubTitleTextVisibility(I)V

    .line 473
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->filterColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mTimeColor:Ljava/lang/String;

    .line 474
    iput-object p3, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mConfirmStr:Ljava/lang/String;

    .line 475
    iput-object p5, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mTimerListener:Lcom/alipay/mobile/antui/api/TimerListener;

    .line 476
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->setConfirmBtnText(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0, p4}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->setOnConfirmBtnClick(Landroid/view/View$OnClickListener;)V

    .line 478
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->timerTask(I)V

    .line 479
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AUDialog;->show()V

    .line 480
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->usdAnim:Z

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->isShow:Z

    .line 482
    return-void
.end method

.method public showWithoutAnim()V
    .locals 4

    .line 439
    sget-object v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->TAG:Ljava/lang/String;

    const-string v1, "AUImageDialog showWithoutAnim"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->setOnConfirmBtnClick(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->isShow:Z

    if-eqz v1, :cond_0

    .line 442
    const-string v1, "AUImageDialog showWithoutAnim, isShow"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    return-void

    .line 445
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->usdAnim:Z

    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->isShow:Z

    .line 447
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AUDialog;->show()V

    .line 449
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 450
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 451
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    move-object v1, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->image_dialog_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 452
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 454
    return-void
.end method
