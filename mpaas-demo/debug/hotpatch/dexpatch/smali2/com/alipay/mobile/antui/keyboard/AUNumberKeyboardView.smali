.class public Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;
.super Lcom/alipay/mobile/antui/basic/AULinearLayout;
.source "AUNumberKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;
    }
.end annotation


# static fields
.field private static final CONFIG_KEY:Ljava/lang/String; = "AUNumberKeyboardView_ENABLE_OLD_LAYOUT"

.field private static final NUM:[Ljava/lang/String;

.field public static final STYLE_NONE:I = 0x3

.field public static final STYLE_PHONE:I = 0x4

.field public static final STYLE_POINT:I = 0x1

.field public static final STYLE_X:I = 0x2


# instance fields
.field private actionClickListener:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;

.field private closeView:Lcom/alipay/mobile/antui/basic/AUImageView;

.field private keyConfirm:Landroid/view/View;

.field private mIsOldLayout:Z

.field private numViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/basic/AUTextView;",
            ">;"
        }
    .end annotation
.end field

.field private startLongDelete:Z

.field private styleView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private windowStateChangeListener:Lcom/alipay/mobile/antui/keyboard/WindowStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 45
    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->NUM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 98
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "style"    # I
    .param p3, "clickListener"    # Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;

    .line 115
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "style"    # I
    .param p3, "usingOldLayout"    # Z

    .line 111
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 102
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I
    .param p4, "usingOldLayout"    # Z
    .param p5, "clickListener"    # Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->startLongDelete:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->numViewList:Ljava/util/List;

    .line 120
    iput-boolean p4, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->mIsOldLayout:Z

    .line 121
    iput-object p5, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->actionClickListener:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method private checkIfUseOldLayout(Landroid/util/AttributeSet;)Z
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, "result":Z
    invoke-static {}, Lcom/alipay/mobile/antui/excutor/AntUIExecutorManager;->getInstance()Lcom/alipay/mobile/antui/excutor/AntUIExecutorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/excutor/AntUIExecutorManager;->getConfigExecutor()Lcom/alipay/mobile/antui/excutor/ConfigExecutor;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 193
    .local v3, "executor":Lcom/alipay/mobile/antui/excutor/ConfigExecutor;
    move-object v3, v1

    if-eqz v1, :cond_0

    .line 195
    :try_start_0
    const-string v1, "AUNumberKeyboardView_ENABLE_OLD_LAYOUT"

    invoke-interface {v3, v1}, Lcom/alipay/mobile/antui/excutor/ConfigExecutor;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 198
    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    move-object v2, v1

    .line 197
    .local v2, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ConfigService \u914d\u7f6e\u9519\u8bef: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "AUNumberKeyboardView"

    invoke-static {v4, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Lcom/alipay/mobile/antui/R$styleable;->AUNumberKeyboardView:[I

    invoke-virtual {v1, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 203
    .local v2, "a":Landroid/content/res/TypedArray;
    move-object v2, v1

    sget v4, Lcom/alipay/mobile/antui/R$styleable;->AUNumberKeyboardView_usingOldLayout:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 205
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 208
    .end local v2    # "a":Landroid/content/res/TypedArray;
    :cond_1
    return v0
.end method

.method private checkType(Landroid/util/AttributeSet;)I
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 171
    const/4 v0, -0x1

    .line 172
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/antui/R$styleable;->AUNumberKeyboardView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 174
    .local v2, "a":Landroid/content/res/TypedArray;
    move-object v2, v1

    sget v3, Lcom/alipay/mobile/antui/R$styleable;->AUNumberKeyboardView_keyboardType:I

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 175
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    .end local v2    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return v0
.end method

.method private getRandomNum(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p1, "arr"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 258
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 259
    .local v0, "t":I
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 260
    .local v1, "out":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 261
    return-object v1
.end method

.method private hideStyleView()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->styleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 294
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->mIsOldLayout:Z

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->styleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->styleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 299
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->closeView:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 300
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->closeView:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .line 126
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->checkIfUseOldLayout(Landroid/util/AttributeSet;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->mIsOldLayout:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->mIsOldLayout:Z

    .line 128
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->checkType(Landroid/util/AttributeSet;)I

    move-result v0

    .line 129
    .local v1, "tmpStyle":I
    move v1, v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 130
    move p3, v1

    .line 133
    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v3, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->mIsOldLayout:Z

    if-eqz v3, :cond_3

    sget v3, Lcom/alipay/mobile/antui/R$layout;->au_number_keyboard_view:I

    goto :goto_2

    :cond_3
    sget v3, Lcom/alipay/mobile/antui/R$layout;->au_number_keyboard_view_v2:I

    :goto_2
    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 134
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->mIsOldLayout:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->setOrientation(I)V

    .line 135
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_CLIENT_BG1:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->setBackgroundColor(I)V

    .line 136
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->setClickable(Z)V

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->numViewList:Ljava/util/List;

    sget v2, Lcom/alipay/mobile/antui/R$id;->au_num_0:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->numViewList:Ljava/util/List;

    sget v2, Lcom/alipay/mobile/antui/R$id;->au_num_1:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->numViewList:Ljava/util/List;

    sget v2, Lcom/alipay/mobile/antui/R$id;->au_num_2:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->numViewList:Ljava/util/List;

    sget v2, Lcom/alipay/mobile/antui/R$id;->au_num_3:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->numViewList:Ljava/util/List;

    sget v2, Lcom/alipay/mobile/antui/R$id;->au_num_4:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->numViewList:Ljava/util/List;

    sget v2, Lcom/alipay/mobile/antui/R$id;->au_num_5:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->numViewList:Ljava/util/List;

    sget v2, Lcom/alipay/mobile/antui/R$id;->au_num_6:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->numViewList:Ljava/util/List;

    sget v2, Lcom/alipay/mobile/antui/R$id;->au_num_7:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->numViewList:Ljava/util/List;

    sget v2, Lcom/alipay/mobile/antui/R$id;->au_num_8:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->numViewList:Ljava/util/List;

    sget v2, Lcom/alipay/mobile/antui/R$id;->au_num_9:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->numViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 150
    invoke-virtual {v2, p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    goto :goto_3

    .line 153
    :cond_4
    sget v0, Lcom/alipay/mobile/antui/R$id;->au_num_style:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->styleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 154
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    sget v0, Lcom/alipay/mobile/antui/R$id;->au_key_close:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUImageView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->closeView:Lcom/alipay/mobile/antui/basic/AUImageView;

    .line 156
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/antui/basic/AUImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->setStyle(I)V

    .line 160
    sget v0, Lcom/alipay/mobile/antui/R$id;->au_key_delete:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    sget v0, Lcom/alipay/mobile/antui/R$id;->au_key_delete:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 162
    sget v0, Lcom/alipay/mobile/antui/R$id;->au_key_delete:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 163
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->mIsOldLayout:Z

    if-nez v0, :cond_5

    .line 164
    sget v0, Lcom/alipay/mobile/antui/R$id;->au_key_confirm:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->keyConfirm:Landroid/view/View;

    .line 165
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_5
    return-void
.end method

.method private onNumClick(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "num"    # Ljava/lang/CharSequence;

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->actionClickListener:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;

    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;->onNumClick(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 236
    :cond_0
    return-void
.end method

.method private showStyleView()V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->styleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->styleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->closeView:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 309
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->closeView:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 346
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->windowStateChangeListener:Lcom/alipay/mobile/antui/keyboard/WindowStateChangeListener;

    if-eqz v0, :cond_0

    .line 348
    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/alipay/mobile/antui/keyboard/WindowStateChangeListener;->stateChange(ZI)V

    .line 350
    :cond_0
    return-void
.end method

.method public isShow()Z
    .locals 1

    .line 358
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    .line 214
    .local v1, "id":I
    move v1, v0

    sget v2, Lcom/alipay/mobile/antui/R$id;->au_key_close:I

    if-ne v0, v2, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->actionClickListener:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;

    if-eqz v0, :cond_3

    .line 216
    invoke-interface {v0, p1}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;->onCloseClick(Landroid/view/View;)V

    return-void

    .line 218
    :cond_0
    sget v0, Lcom/alipay/mobile/antui/R$id;->au_key_delete:I

    if-ne v1, v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->actionClickListener:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;

    if-eqz v0, :cond_3

    .line 220
    const-string v0, "AUNumberKeyboardView"

    const-string/jumbo v2, "onClick"

    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->actionClickListener:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;->onDeleteClick(Landroid/view/View;)V

    return-void

    .line 223
    :cond_1
    sget v0, Lcom/alipay/mobile/antui/R$id;->au_key_confirm:I

    if-ne v1, v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->actionClickListener:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;

    if-eqz v0, :cond_3

    .line 225
    invoke-interface {v0, p1}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;->onConfirmClick(Landroid/view/View;)V

    return-void

    .line 227
    :cond_2
    instance-of v0, p1, Lcom/alipay/mobile/antui/basic/AUTextView;

    if-eqz v0, :cond_3

    .line 228
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->onNumClick(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 230
    :cond_3
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/antui/R$id;->au_key_delete:I

    if-ne v0, v1, :cond_0

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->startLongDelete:Z

    .line 52
    const-string v0, "AUNumberKeyboardView"

    const-string/jumbo v1, "startLongDelete = true"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/antui/R$id;->au_key_delete:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 60
    const-string v0, "AUNumberKeyboardView"

    const-string/jumbo v1, "onTouch"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->startLongDelete:Z

    if-ne v1, v2, :cond_1

    .line 66
    const-string/jumbo v1, "startLongDelete = false"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-boolean v3, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->startLongDelete:Z

    .line 72
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->startLongDelete:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->actionClickListener:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;

    if-eqz v0, :cond_2

    .line 73
    invoke-interface {v0, p1}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;->onDeleteClick(Landroid/view/View;)V

    .line 75
    const-wide/16 v0, 0x96

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 81
    :cond_2
    :goto_1
    return v3

    .line 83
    :cond_3
    return v2
.end method

.method public setActionClickListener(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;

    .line 320
    iput-object p1, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->actionClickListener:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;

    .line 321
    return-void
.end method

.method public setConfirmKeyEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->keyConfirm:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 184
    :cond_0
    return-void
.end method

.method public setNumKeyRandom(Z)V
    .locals 5
    .param p1, "isRandom"    # Z

    .line 240
    sget-object v0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->NUM:[Ljava/lang/String;

    array-length v0, v0

    .line 241
    .local v0, "length":I
    if-eqz p1, :cond_2

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v1, "arr":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->NUM:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 244
    aget-object v3, v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 247
    iget-object v3, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->numViewList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->getRandomNum(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 249
    .end local v1    # "arr":Ljava/util/List;
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 250
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 251
    iget-object v2, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->numViewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUTextView;

    sget-object v3, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->NUM:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 254
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public setStyle(I)V
    .locals 2
    .param p1, "style"    # I

    .line 270
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->styleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-direct {p0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->showStyleView()V

    .line 290
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->styleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-direct {p0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->hideStyleView()V

    .line 282
    return-void

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->styleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    invoke-direct {p0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->showStyleView()V

    .line 278
    return-void

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->styleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    invoke-direct {p0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->showStyleView()V

    .line 274
    return-void
.end method

.method public setWindowStateChangeListener(Lcom/alipay/mobile/antui/keyboard/WindowStateChangeListener;)V
    .locals 0
    .param p1, "windowStateChangeListener"    # Lcom/alipay/mobile/antui/keyboard/WindowStateChangeListener;

    .line 329
    iput-object p1, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->windowStateChangeListener:Lcom/alipay/mobile/antui/keyboard/WindowStateChangeListener;

    .line 330
    return-void
.end method

.method public show()V
    .locals 4

    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->windowStateChangeListener:Lcom/alipay/mobile/antui/keyboard/WindowStateChangeListener;

    if-eqz v0, :cond_0

    .line 338
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x435e0000    # 222.0f

    invoke-static {v2, v3}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/antui/keyboard/WindowStateChangeListener;->stateChange(ZI)V

    .line 340
    :cond_0
    return-void
.end method
