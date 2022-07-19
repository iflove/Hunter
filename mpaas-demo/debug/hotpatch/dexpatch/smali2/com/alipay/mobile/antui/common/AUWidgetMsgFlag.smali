.class public Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;
.super Lcom/alipay/mobile/antui/basic/AUFrameLayout;
.source "AUWidgetMsgFlag.java"


# static fields
.field protected static MSG_STYLE_NEW:I

.field protected static MSG_STYLE_NUM:I

.field protected static MSG_STYLE_POINT:I

.field private static STYLE_NEW:Ljava/lang/String;

.field private static STYLE_NUM:Ljava/lang/String;

.field private static STYLE_POINT:Ljava/lang/String;


# instance fields
.field private isNeedSyncData:Z

.field protected mDescendantCount:I

.field private mFlagBgImg:Lcom/alipay/mobile/antui/basic/AUImageView;

.field private mFlagText:Lcom/alipay/mobile/antui/basic/AUTextView;

.field protected mMsgStyle:I

.field protected mPersistenceMsgCount:I

.field protected mTemporaryMsgCount:I

.field protected maxCount:I

.field protected widgetId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->MSG_STYLE_POINT:I

    .line 20
    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->MSG_STYLE_NUM:I

    .line 21
    const/4 v0, 0x2

    sput v0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->MSG_STYLE_NEW:I

    .line 22
    const-string/jumbo v0, "point"

    sput-object v0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->STYLE_POINT:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "new"

    sput-object v0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->STYLE_NEW:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "num"

    sput-object v0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->STYLE_NUM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mTemporaryMsgCount:I

    .line 30
    iput v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mPersistenceMsgCount:I

    .line 31
    iput v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mDescendantCount:I

    .line 32
    sget v0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->MSG_STYLE_POINT:I

    iput v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mMsgStyle:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->isNeedSyncData:Z

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->widgetId:Ljava/lang/String;

    .line 36
    const/16 v1, 0x63

    iput v1, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->maxCount:I

    .line 54
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->setVisibility(I)V

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$layout;->widget_msg_flag_layout:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    sget v0, Lcom/alipay/mobile/antui/R$id;->widgetMsgBg:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUImageView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagBgImg:Lcom/alipay/mobile/antui/basic/AUImageView;

    .line 59
    sget v0, Lcom/alipay/mobile/antui/R$id;->widgetMsgText:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagText:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isNeedSyncData"    # Z

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-boolean p2, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->isNeedSyncData:Z

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;)Lcom/alipay/mobile/antui/basic/AUImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagBgImg:Lcom/alipay/mobile/antui/basic/AUImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;)Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagText:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method


# virtual methods
.method protected calculateMsgCount(III)I
    .locals 1
    .param p1, "temporaryMsgCount"    # I
    .param p2, "persistenceMsgCount"    # I
    .param p3, "descendantCount"    # I

    .line 155
    add-int v0, p1, p2

    add-int/2addr v0, p3

    return v0
.end method

.method public clearBindingWidget(Ljava/lang/String;)V
    .locals 0
    .param p1, "widgetId"    # Ljava/lang/String;

    .line 208
    return-void
.end method

.method public clearBindingWidget(Z)V
    .locals 1
    .param p1, "needReset"    # Z

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->widgetId:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public hideMsgFlag()V
    .locals 1

    .line 143
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->setVisibility(I)V

    .line 144
    return-void
.end method

.method protected refreshMsgFlag()V
    .locals 1

    .line 161
    new-instance v0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;-><init>(Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->post(Ljava/lang/Runnable;)Z

    .line 199
    return-void
.end method

.method public setBindingWidget(Ljava/lang/String;)V
    .locals 1
    .param p1, "widgetId"    # Ljava/lang/String;

    .line 63
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->isNeedSyncData:Z

    if-nez v0, :cond_0

    .line 64
    return-void

    .line 66
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    return-void

    .line 69
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->widgetId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setMsgCount(III)V
    .locals 0
    .param p1, "temporaryMsgCount"    # I
    .param p2, "persistenceMsgCount"    # I
    .param p3, "descendantCount"    # I

    .line 77
    iput p1, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mTemporaryMsgCount:I

    .line 78
    iput p2, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mPersistenceMsgCount:I

    .line 79
    iput p3, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mDescendantCount:I

    .line 80
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->refreshMsgFlag()V

    .line 81
    return-void
.end method

.method public setMsgStyle(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgStyle"    # Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->STYLE_NUM:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget v0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->MSG_STYLE_NUM:I

    iput v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mMsgStyle:I

    return-void

    .line 88
    :cond_0
    sget-object v0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->STYLE_POINT:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    sget v0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->MSG_STYLE_POINT:I

    iput v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mMsgStyle:I

    return-void

    .line 90
    :cond_1
    sget-object v0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->STYLE_NEW:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    sget v0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->MSG_STYLE_NEW:I

    iput v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mMsgStyle:I

    .line 92
    :cond_2
    return-void
.end method

.method public showMsgFlag()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagBgImg:Lcom/alipay/mobile/antui/basic/AUImageView;

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->shock_point_small:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setImageResource(I)V

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagText:Lcom/alipay/mobile/antui/basic/AUTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagText:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagBgImg:Lcom/alipay/mobile/antui/basic/AUImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 108
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->setVisibility(I)V

    .line 109
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->postInvalidate()V

    .line 110
    return-void
.end method

.method public showMsgFlag(I)V
    .locals 2
    .param p1, "msgCount"    # I

    .line 115
    iget v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->maxCount:I

    if-le p1, v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagBgImg:Lcom/alipay/mobile/antui/basic/AUImageView;

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->shock_point_more:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setImageResource(I)V

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagBgImg:Lcom/alipay/mobile/antui/basic/AUImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagText:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    return-void

    .line 120
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->showMsgFlag(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public showMsgFlag(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagText:Lcom/alipay/mobile/antui/basic/AUTextView;

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->shock_point_large:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setBackgroundResource(I)V

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagBgImg:Lcom/alipay/mobile/antui/basic/AUImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagText:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 131
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->setVisibility(I)V

    .line 133
    :cond_0
    return-void
.end method

.method public showMsgFlagNew()V
    .locals 1

    .line 136
    const-string/jumbo v0, "new"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->showMsgFlag(Ljava/lang/String;)V

    .line 137
    return-void
.end method
