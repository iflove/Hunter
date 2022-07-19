.class public Lcom/alipay/mobile/antui/picker/AUWheelView;
.super Lcom/alipay/mobile/antui/basic/AUScrollView;
.source "AUWheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/picker/AUWheelView$a;,
        Lcom/alipay/mobile/antui/picker/AUWheelView$OnWheelViewListener;
    }
.end annotation


# static fields
.field private static final DELAY:I = 0x32

.field public static final LINE_COLOR:I = -0x7c321a

.field public static final OFF_SET:I = 0x1

.field public static final TEXT_COLOR_FOCUS:I = -0xfd7732

.field public static final TEXT_COLOR_NORMAL:I = -0x444445

.field public static final TEXT_SIZE:I = 0x10


# instance fields
.field private context:Landroid/content/Context;

.field private curData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/model/PickerDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private displayItemCount:I

.field private initialY:I

.field private isUserScroll:Z

.field private itemHeight:I

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lineColor:I

.field private lineVisible:Z

.field public next:Lcom/alipay/mobile/antui/picker/AUWheelView;

.field private offset:I

.field private onWheelViewListener:Lcom/alipay/mobile/antui/picker/AUWheelView$OnWheelViewListener;

.field private paint:Landroid/graphics/Paint;

.field private previousY:F

.field private scrollerTask:Ljava/lang/Runnable;

.field private selectedAreaBorder:[I

.field private selectedIndex:I

.field private textColorFocus:I

.field private textColorNormal:I

.field private textSize:I

.field private viewWidth:I

.field private views:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUScrollView;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->items:Ljava/util/List;

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->offset:I

    .line 62
    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->selectedIndex:I

    .line 65
    new-instance v1, Lcom/alipay/mobile/antui/picker/AUWheelView$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/antui/picker/AUWheelView$a;-><init>(Lcom/alipay/mobile/antui/picker/AUWheelView;B)V

    iput-object v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->scrollerTask:Ljava/lang/Runnable;

    .line 66
    iput v2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->itemHeight:I

    .line 72
    const/16 v1, 0x10

    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->textSize:I

    .line 73
    const v1, -0x444445

    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->textColorNormal:I

    .line 74
    const v1, -0xfd7732

    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->textColorFocus:I

    .line 75
    const v1, -0x7c321a

    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->lineColor:I

    .line 76
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->lineVisible:Z

    .line 77
    iput-boolean v2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->isUserScroll:Z

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->previousY:F

    .line 90
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->init(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->items:Ljava/util/List;

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->offset:I

    .line 62
    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->selectedIndex:I

    .line 65
    new-instance v1, Lcom/alipay/mobile/antui/picker/AUWheelView$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/antui/picker/AUWheelView$a;-><init>(Lcom/alipay/mobile/antui/picker/AUWheelView;B)V

    iput-object v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->scrollerTask:Ljava/lang/Runnable;

    .line 66
    iput v2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->itemHeight:I

    .line 72
    const/16 v1, 0x10

    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->textSize:I

    .line 73
    const v1, -0x444445

    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->textColorNormal:I

    .line 74
    const v1, -0xfd7732

    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->textColorFocus:I

    .line 75
    const v1, -0x7c321a

    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->lineColor:I

    .line 76
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->lineVisible:Z

    .line 77
    iput-boolean v2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->isUserScroll:Z

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->previousY:F

    .line 101
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->init(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->items:Ljava/util/List;

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->offset:I

    .line 62
    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->selectedIndex:I

    .line 65
    new-instance v1, Lcom/alipay/mobile/antui/picker/AUWheelView$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/antui/picker/AUWheelView$a;-><init>(Lcom/alipay/mobile/antui/picker/AUWheelView;B)V

    iput-object v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->scrollerTask:Ljava/lang/Runnable;

    .line 66
    iput v2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->itemHeight:I

    .line 72
    const/16 v1, 0x10

    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->textSize:I

    .line 73
    const v1, -0x444445

    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->textColorNormal:I

    .line 74
    const v1, -0xfd7732

    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->textColorFocus:I

    .line 75
    const v1, -0x7c321a

    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->lineColor:I

    .line 76
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->lineVisible:Z

    .line 77
    iput-boolean v2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->isUserScroll:Z

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->previousY:F

    .line 113
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->init(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method private _setItems(Ljava/util/List;)V
    .locals 4
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 364
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 367
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->offset:I

    if-ge v0, v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->items:Ljava/util/List;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 369
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->items:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->initData()V

    .line 374
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/picker/AUWheelView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->obtainSelectedAreaBorder()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/picker/AUWheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 32
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->viewWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/antui/picker/AUWheelView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/antui/picker/AUWheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 32
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->itemHeight:I

    return v0
.end method

.method static synthetic access$502(Lcom/alipay/mobile/antui/picker/AUWheelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUWheelView;
    .param p1, "x1"    # I

    .line 32
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->selectedIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/alipay/mobile/antui/picker/AUWheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 32
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->offset:I

    return v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/antui/picker/AUWheelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->onSelectedCallBack()V

    return-void
.end method

.method static synthetic access$800(Lcom/alipay/mobile/antui/picker/AUWheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 32
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->initialY:I

    return v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/antui/picker/AUWheelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->startScrollerTask()V

    return-void
.end method

.method private createView(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 9
    .param p1, "item"    # Ljava/lang/String;

    .line 154
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 155
    .local v2, "tv":Landroid/widget/TextView;
    move-object v2, v0

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 157
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 158
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->textSize:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 160
    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 161
    const/high16 v0, 0x41700000    # 15.0f

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->dip2px(F)I

    move-result v0

    .line 162
    .local v0, "padding":I
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 163
    iget v3, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->itemHeight:I

    if-nez v3, :cond_1

    .line 164
    invoke-direct {p0, v2}, Lcom/alipay/mobile/antui/picker/AUWheelView;->getViewMeasuredHeight(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->itemHeight:I

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "itemHeight: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->itemHeight:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "compositeui"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->itemHeight:I

    iget v7, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->displayItemCount:I

    mul-int v6, v6, v7

    invoke-direct {v3, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 167
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->views:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    move-object v7, v1

    .line 169
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object v7, v6

    if-nez v6, :cond_0

    .line 170
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v7, v6

    .line 172
    :cond_0
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->itemHeight:I

    iget v8, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->displayItemCount:I

    mul-int v6, v6, v8

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 173
    .local v1, "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    move-object v1, v4

    iget v5, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 174
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    .end local v1    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-object v2
.end method

.method private dip2px(F)I
    .locals 3
    .param p1, "dpValue"    # F

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 234
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getViewMeasuredHeight(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 238
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 239
    .local v0, "width":I
    const v1, 0x1fffffff

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 240
    .local v1, "expandSpec":I
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    return v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->context:Landroid/content/Context;

    .line 118
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_SUB_CONTENT:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->textColorNormal:I

    .line 119
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_MAIN_CONTENT:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->textColorFocus:I

    .line 120
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_DIALOG_DIVIDER_COLOR:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->lineColor:I

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setFadingEdgeLength(I)V

    .line 123
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 124
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setOverScrollMode(I)V

    .line 127
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setVerticalScrollBarEnabled(Z)V

    .line 129
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->views:Landroid/widget/LinearLayout;

    .line 130
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->views:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->addView(Landroid/view/View;)V

    .line 132
    return-void
.end method

.method private initData()V
    .locals 4

    .line 140
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->offset:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->displayItemCount:I

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->views:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    .local v1, "item":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->views:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->createView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    .end local v1    # "item":Ljava/lang/String;
    goto :goto_0

    .line 150
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->itemHeight:I

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->selectedIndex:I

    iget v2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->offset:I

    sub-int/2addr v1, v2

    mul-int v0, v0, v1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->refreshItemView(I)V

    .line 151
    return-void
.end method

.method private obtainSelectedAreaBorder()[I
    .locals 5

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->selectedAreaBorder:[I

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->selectedAreaBorder:[I

    .line 212
    const/4 v1, 0x0

    iget v2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->itemHeight:I

    iget v3, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->offset:I

    mul-int v4, v2, v3

    aput v4, v0, v1

    .line 213
    const/4 v1, 0x1

    add-int/2addr v3, v1

    mul-int v2, v2, v3

    aput v2, v0, v1

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->selectedAreaBorder:[I

    return-object v0
.end method

.method private onSelectedCallBack()V
    .locals 5

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->onWheelViewListener:Lcom/alipay/mobile/antui/picker/AUWheelView$OnWheelViewListener;

    if-eqz v0, :cond_0

    .line 228
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->isUserScroll:Z

    iget v2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->selectedIndex:I

    iget v3, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->offset:I

    sub-int v3, v2, v3

    iget-object v4, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->items:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2}, Lcom/alipay/mobile/antui/picker/AUWheelView$OnWheelViewListener;->onSelected(ZILjava/lang/String;)V

    .line 230
    :cond_0
    return-void
.end method

.method private refreshItemView(I)V
    .locals 7
    .param p1, "y"    # I

    .line 181
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->itemHeight:I

    div-int v1, p1, v0

    iget v2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->offset:I

    add-int/2addr v1, v2

    .line 182
    .local v1, "position":I
    rem-int v3, p1, v0

    .line 183
    .local v3, "remainder":I
    div-int v4, p1, v0

    .line 185
    .local v4, "divided":I
    if-nez v3, :cond_0

    .line 186
    add-int v1, v4, v2

    goto :goto_0

    .line 188
    :cond_0
    div-int/lit8 v0, v0, 0x2

    if-le v3, v0, :cond_1

    .line 189
    add-int/2addr v2, v4

    add-int/lit8 v1, v2, 0x1

    .line 193
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->views:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 194
    .local v0, "childSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v5, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 195
    iget-object v6, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->views:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 196
    .local v5, "itemView":Landroid/widget/TextView;
    move-object v5, v6

    if-nez v6, :cond_2

    .line 197
    return-void

    .line 200
    :cond_2
    if-ne v1, v2, :cond_3

    .line 201
    iget v6, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->textColorFocus:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 203
    :cond_3
    iget v6, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->textColorNormal:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    .end local v5    # "itemView":Landroid/widget/TextView;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method private setSelectedIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->isUserScroll:Z

    .line 520
    new-instance v0, Lcom/alipay/mobile/antui/picker/AUWheelView$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/antui/picker/AUWheelView$2;-><init>(Lcom/alipay/mobile/antui/picker/AUWheelView;I)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->post(Ljava/lang/Runnable;)Z

    .line 530
    return-void
.end method

.method private startScrollerTask()V
    .locals 3

    .line 135
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->initialY:I

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->scrollerTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/antui/picker/AUWheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    return-void
.end method


# virtual methods
.method public fling(I)V
    .locals 1
    .param p1, "velocityY"    # I

    .line 310
    div-int/lit8 v0, p1, 0x3

    invoke-super {p0, v0}, Lcom/alipay/mobile/antui/basic/AUScrollView;->fling(I)V

    .line 311
    return-void
.end method

.method public getCurData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/model/PickerDataModel;",
            ">;"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->curData:Ljava/util/List;

    return-object v0
.end method

.method public getLineColor()I
    .locals 1

    .line 480
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->lineColor:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 498
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->offset:I

    return v0
.end method

.method public getSelectModel()Lcom/alipay/mobile/antui/model/PickerDataModel;
    .locals 4

    .line 578
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->curData:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 579
    return-object v1

    .line 581
    :cond_0
    iget v2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->selectedIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->offset:I

    add-int/2addr v0, v3

    if-ge v2, v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->selectedIndex:I

    if-ltz v0, :cond_1

    .line 582
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->curData:Ljava/util/List;

    sub-int/2addr v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/model/PickerDataModel;

    return-object v0

    .line 584
    :cond_1
    return-object v1
.end method

.method public getSelectedIndex()I
    .locals 2

    .line 601
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->selectedIndex:I

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSelectedItem()Ljava/lang/String;
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    const/4 v0, 0x0

    return-object v0

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->items:Ljava/util/List;

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->selectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSeletedIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 592
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->getSelectedIndex()I

    move-result v0

    return v0
.end method

.method public getSeletedItem()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 561
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->getSelectedItem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 433
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->textColorFocus:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 415
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->textSize:I

    return v0
.end method

.method public isLineVisible()Z
    .locals 1

    .line 462
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->lineVisible:Z

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .line 296
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/antui/basic/AUScrollView;->onScrollChanged(IIII)V

    .line 297
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/picker/AUWheelView;->refreshItemView(I)V

    .line 298
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 302
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/antui/basic/AUScrollView;->onSizeChanged(IIII)V

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "w: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldh: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "compositeui"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->viewWidth:I

    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->offset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "items=%s, offset=%s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "compositeui"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "selectedIndex="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->selectedIndex:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->previousY:F

    sub-float/2addr v0, v3

    .line 323
    .local v0, "delta":F
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delta="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->isUserScroll:Z

    .line 332
    invoke-direct {p0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->startScrollerTask()V

    goto :goto_0

    .line 317
    .end local v0    # "delta":F
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->previousY:F

    .line 318
    nop

    .line 338
    :goto_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public register(Lcom/alipay/mobile/antui/picker/AUWheelView;)V
    .locals 0
    .param p1, "wheelView"    # Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 676
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->next:Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 677
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 246
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 252
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->viewWidth:I

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->viewWidth:I

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "viewWidth: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->viewWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "compositeui"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->lineVisible:Z

    if-nez v0, :cond_1

    .line 259
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 263
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->paint:Landroid/graphics/Paint;

    .line 264
    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->lineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 268
    :cond_2
    new-instance v0, Lcom/alipay/mobile/antui/picker/AUWheelView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/picker/AUWheelView$1;-><init>(Lcom/alipay/mobile/antui/picker/AUWheelView;)V

    move-object p1, v0

    .line 291
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 382
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->_setItems(Ljava/util/List;)V

    .line 384
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setSelectedIndex(I)V

    .line 385
    return-void
.end method

.method public setItems(Ljava/util/List;I)V
    .locals 0
    .param p1, "list"    # Ljava/util/List;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 394
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->_setItems(Ljava/util/List;)V

    .line 395
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setSelectedIndex(I)V

    .line 396
    return-void
.end method

.method public setItems(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "list"    # Ljava/util/List;
    .param p2, "item"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 405
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->_setItems(Ljava/util/List;)V

    .line 406
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setSelectedItem(Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public setLineColor(I)V
    .locals 0
    .param p1, "lineColor"    # I

    .line 489
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->lineColor:I

    .line 490
    return-void
.end method

.method public setLineVisible(Z)V
    .locals 0
    .param p1, "lineVisible"    # Z

    .line 471
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->lineVisible:Z

    .line 472
    return-void
.end method

.method public setOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .line 507
    if-lez p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 510
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->offset:I

    .line 511
    return-void

    .line 508
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offset must between 1 and 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnWheelViewListener(Lcom/alipay/mobile/antui/picker/AUWheelView$OnWheelViewListener;)V
    .locals 0
    .param p1, "onWheelViewListener"    # Lcom/alipay/mobile/antui/picker/AUWheelView$OnWheelViewListener;

    .line 610
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->onWheelViewListener:Lcom/alipay/mobile/antui/picker/AUWheelView$OnWheelViewListener;

    .line 611
    return-void
.end method

.method public setPickerDateModel(Ljava/util/List;)V
    .locals 4
    .param p1, "models"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/model/PickerDataModel;",
            ">;)V"
        }
    .end annotation

    .line 343
    if-nez p1, :cond_0

    .line 344
    return-void

    .line 346
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->curData:Ljava/util/List;

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v0, "tmpList":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 349
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/antui/model/PickerDataModel;

    .line 350
    .local v2, "model":Lcom/alipay/mobile/antui/model/PickerDataModel;
    move-object v2, v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/alipay/mobile/antui/model/PickerDataModel;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 351
    iget-object v3, v2, Lcom/alipay/mobile/antui/model/PickerDataModel;->name:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    .end local v2    # "model":Lcom/alipay/mobile/antui/model/PickerDataModel;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setItems(Ljava/util/List;)V

    .line 355
    return-void
.end method

.method public setSelectedItem(Ljava/lang/String;)V
    .locals 2
    .param p1, "item"    # Ljava/lang/String;

    .line 538
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 539
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->offset:I

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setSelectedIndex(I)V

    .line 542
    return-void

    .line 538
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setSelectedModel(I)V
    .locals 3
    .param p1, "index"    # I

    .line 550
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setSelectedIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setSelectedModel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setSelectedModel"

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public setSeledIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 219
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->selectedIndex:I

    .line 220
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .line 453
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->textColorFocus:I

    .line 454
    return-void
.end method

.method public setTextColor(II)V
    .locals 0
    .param p1, "textColorNormal"    # I
    .param p2, "textColorFocus"    # I

    .line 443
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->textColorNormal:I

    .line 444
    iput p2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->textColorFocus:I

    .line 445
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .line 424
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView;->textSize:I

    .line 425
    return-void
.end method
