.class public Lcom/alipay/mobile/antui/segement/AUSegment;
.super Lcom/alipay/mobile/antui/basic/AURelativeLayout;
.source "AUSegment.java"

# interfaces
.implements Lcom/alipay/mobile/antui/api/AntUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/segement/AUSegment$TabSwitchListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AUSegment"


# instance fields
.field private addIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private allowDuplicateClick:Z

.field private bottomLine:Landroid/view/View;

.field private buttomLineColor:I

.field private currentCategoryTag:Ljava/lang/String;

.field private currentClickedOnMenu:Lcom/alipay/mobile/antui/segement/MenuItemLayout;

.field private currentIndex:I

.field private currentPos:I

.field private currentScroolBarLeft:F

.field private edgeSpace:I

.field private horizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private isAdd:Z

.field private isScroll:Z

.field private lineDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/model/ItemCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mSpaced:I

.field private final matrix:Landroid/graphics/Matrix;

.field private menuBar:Landroid/widget/ImageView;

.field private paddingDis:[I

.field private paddingDisUniformly:I

.field private repeatClick:Z

.field private rightViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private screenWidth:I

.field private scroller:Landroid/widget/Scroller;

.field public tabButtomLine:Landroid/widget/ImageView;

.field private tabContainerWidth:I

.field protected tabCount:I

.field private tabNameArray:[Ljava/lang/String;

.field protected tabRl:[Landroid/widget/RelativeLayout;

.field private tabSpace:I

.field private tabSwitchListener:Lcom/alipay/mobile/antui/segement/AUSegment$TabSwitchListener;

.field private tabTextArrayStr:Ljava/lang/String;

.field private tabTextSize:F

.field private tabTextWidth:[I

.field private tabViews:[Landroid/widget/TextView;

.field private tabWidth:[I

.field private tabWidthEqualDivScreen:I

.field public tabsContainer:Landroid/widget/LinearLayout;

.field private textColor:Landroid/content/res/ColorStateList;

.field private uniformlySpaced:Z

.field private viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabCount:I

    .line 49
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabWidthEqualDivScreen:I

    .line 50
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabNameArray:[Ljava/lang/String;

    .line 51
    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabViews:[Landroid/widget/TextView;

    .line 52
    new-array v1, v0, [Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabRl:[Landroid/widget/RelativeLayout;

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->textColor:Landroid/content/res/ColorStateList;

    .line 58
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->matrix:Landroid/graphics/Matrix;

    .line 59
    const/4 v2, 0x0

    iput v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentPos:I

    .line 77
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabWidth:[I

    .line 78
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabTextWidth:[I

    .line 86
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->paddingDis:[I

    .line 764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mData:Ljava/util/List;

    .line 765
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->rightViewMap:Ljava/util/Map;

    .line 768
    iput v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentIndex:I

    .line 110
    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/antui/segement/AUSegment;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tabSpace"    # I
    .param p3, "edgeSpace"    # I

    .line 104
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabCount:I

    .line 49
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabWidthEqualDivScreen:I

    .line 50
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabNameArray:[Ljava/lang/String;

    .line 51
    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabViews:[Landroid/widget/TextView;

    .line 52
    new-array v1, v0, [Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabRl:[Landroid/widget/RelativeLayout;

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->textColor:Landroid/content/res/ColorStateList;

    .line 58
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->matrix:Landroid/graphics/Matrix;

    .line 59
    const/4 v2, 0x0

    iput v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentPos:I

    .line 77
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabWidth:[I

    .line 78
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabTextWidth:[I

    .line 86
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->paddingDis:[I

    .line 764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mData:Ljava/util/List;

    .line 765
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->rightViewMap:Ljava/util/Map;

    .line 768
    iput v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentIndex:I

    .line 105
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/alipay/mobile/antui/segement/AUSegment;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabCount:I

    .line 49
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabWidthEqualDivScreen:I

    .line 50
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabNameArray:[Ljava/lang/String;

    .line 51
    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabViews:[Landroid/widget/TextView;

    .line 52
    new-array v1, v0, [Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabRl:[Landroid/widget/RelativeLayout;

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->textColor:Landroid/content/res/ColorStateList;

    .line 58
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->matrix:Landroid/graphics/Matrix;

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentPos:I

    .line 77
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabWidth:[I

    .line 78
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabTextWidth:[I

    .line 86
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->paddingDis:[I

    .line 764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mData:Ljava/util/List;

    .line 765
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->rightViewMap:Ljava/util/Map;

    .line 768
    iput v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentIndex:I

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/segement/AUSegment;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabCount:I

    .line 49
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabWidthEqualDivScreen:I

    .line 50
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabNameArray:[Ljava/lang/String;

    .line 51
    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabViews:[Landroid/widget/TextView;

    .line 52
    new-array v1, v0, [Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabRl:[Landroid/widget/RelativeLayout;

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->textColor:Landroid/content/res/ColorStateList;

    .line 58
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->matrix:Landroid/graphics/Matrix;

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentPos:I

    .line 77
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabWidth:[I

    .line 78
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabTextWidth:[I

    .line 86
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->paddingDis:[I

    .line 764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mData:Ljava/util/List;

    .line 765
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->rightViewMap:Ljava/util/Map;

    .line 768
    iput v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentIndex:I

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/segement/AUSegment;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/segement/AUSegment;)Lcom/alipay/mobile/antui/segement/AUSegment$TabSwitchListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/segement/AUSegment;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabSwitchListener:Lcom/alipay/mobile/antui/segement/AUSegment$TabSwitchListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/segement/AUSegment;)Lcom/alipay/mobile/antui/segement/AUScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/segement/AUSegment;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/segement/AUSegment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/segement/AUSegment;

    .line 46
    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->screenWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/antui/segement/AUSegment;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/segement/AUSegment;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/antui/segement/AUSegment;)Lcom/alipay/mobile/antui/segement/MenuItemLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/segement/AUSegment;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentClickedOnMenu:Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/antui/segement/AUSegment;FI)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/segement/AUSegment;
    .param p1, "x1"    # F
    .param p2, "x2"    # I

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/segement/AUSegment;->moveScrollBarTo(FI)V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/mobile/antui/segement/AUSegment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/segement/AUSegment;

    .line 46
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->repeatClick:Z

    return v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/antui/segement/AUSegment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/segement/AUSegment;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentCategoryTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/alipay/mobile/antui/segement/AUSegment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/segement/AUSegment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentCategoryTag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/alipay/mobile/antui/segement/AUSegment;Landroid/view/View;Lcom/alipay/mobile/antui/model/ItemCategory;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/segement/AUSegment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/alipay/mobile/antui/model/ItemCategory;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/segement/AUSegment;->setCurMenuState(Landroid/view/View;Lcom/alipay/mobile/antui/model/ItemCategory;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alipay/mobile/antui/segement/AUSegment;Landroid/view/View;F)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/segement/AUSegment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/segement/AUSegment;->menuBarScroll(Landroid/view/View;F)V

    return-void
.end method

.method private adjustLinePosition(I)V
    .locals 3
    .param p1, "offsetPixels"    # I

    .line 449
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isScroll:Z

    if-eqz v0, :cond_0

    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->matrix:Landroid/graphics/Matrix;

    int-to-float v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 451
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabButtomLine:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 452
    return-void
.end method

.method private adjustTabButtomLine()V
    .locals 5

    .line 738
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isScroll:Z

    if-nez v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 740
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->uniformlySpaced:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->matrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentPos:I

    invoke-direct {p0, v2}, Lcom/alipay/mobile/antui/segement/AUSegment;->getUSOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 742
    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentPos:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->initButtomLineDrawable(I)V

    goto :goto_0

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->matrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabWidthEqualDivScreen:I

    iget v3, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentPos:I

    mul-int v2, v2, v3

    iget-object v4, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->paddingDis:[I

    aget v3, v4, v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 746
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabButtomLine:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 748
    :cond_1
    return-void
.end method

.method private getUSOffset(I)I
    .locals 3
    .param p1, "position"    # I

    .line 436
    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mSpaced:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->paddingDisUniformly:I

    add-int/2addr v0, v1

    .line 437
    .local v0, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 438
    iget-object v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabWidth:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 115
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "tabSpace"    # I
    .param p4, "edgeSpace"    # I

    .line 118
    if-gtz p3, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_segment_text_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabSpace:I

    goto :goto_0

    .line 121
    :cond_0
    iput p3, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabSpace:I

    .line 123
    :goto_0
    if-gtz p4, :cond_1

    .line 124
    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabSpace:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->edgeSpace:I

    goto :goto_1

    .line 126
    :cond_1
    iput p4, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->edgeSpace:I

    .line 128
    :goto_1
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->Segment:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 131
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/segement/AUSegment;->initStyleByTheme(Landroid/content/Context;)V

    .line 133
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/segement/AUSegment;->initView(Landroid/content/Context;)V

    .line 136
    return-void
.end method

.method private initButtomLineDrawable()V
    .locals 1

    .line 368
    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentPos:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->initButtomLineDrawable(I)V

    .line 369
    return-void
.end method

.method private initButtomLineDrawable(I)V
    .locals 4
    .param p1, "position"    # I

    .line 372
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isScroll:Z

    if-eqz v0, :cond_0

    return-void

    .line 373
    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->lineDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 374
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 375
    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->buttomLineColor:I

    if-eqz v0, :cond_1

    .line 376
    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->lineDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->lineDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->AU_COLOR9:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 381
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->lineDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabTextWidth:[I

    aget v1, v1, p1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->switch_tab_line_height:I

    .line 382
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 381
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabButtomLine:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->lineDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 234
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isScroll:Z

    if-nez v0, :cond_0

    .line 235
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->ap_switch_tab_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 237
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE10:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->setMinimumHeight(I)V

    .line 238
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->scroller:Landroid/widget/Scroller;

    .line 239
    sget v0, Lcom/alipay/mobile/antui/R$id;->tabs:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabsContainer:Landroid/widget/LinearLayout;

    .line 240
    sget v0, Lcom/alipay/mobile/antui/R$id;->tabLine:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabButtomLine:Landroid/widget/ImageView;

    .line 241
    sget v0, Lcom/alipay/mobile/antui/R$id;->addIcon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->addIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 242
    sget v0, Lcom/alipay/mobile/antui/R$id;->bottomLine:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->bottomLine:Landroid/view/View;

    .line 243
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->screenWidth:I

    .line 244
    invoke-direct {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->setAdd()V

    .line 245
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/segement/AUSegment;->getTabViews(Landroid/content/Context;)V

    return-void

    .line 247
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->category_bar_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 248
    sget v0, Lcom/alipay/mobile/antui/R$id;->scroll_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    .line 249
    iget v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->edgeSpace:I

    iget v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabSpace:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->edgeSpace:I

    iget v4, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabSpace:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    invoke-virtual {v4}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->setPadding(IIII)V

    .line 250
    sget v0, Lcom/alipay/mobile/antui/R$id;->horizontalScrollView:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 251
    sget v0, Lcom/alipay/mobile/antui/R$id;->addIcon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->addIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 252
    sget v0, Lcom/alipay/mobile/antui/R$id;->menu_bar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->menuBar:Landroid/widget/ImageView;

    .line 253
    iget v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->buttomLineColor:I

    if-eqz v1, :cond_1

    .line 254
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 256
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentScroolBarLeft:F

    .line 257
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->screenWidth:I

    .line 258
    invoke-direct {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->setAdd()V

    .line 260
    return-void
.end method

.method private isSameContent(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .param p1, "list1"    # Ljava/util/List;
    .param p2, "list2"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/model/ItemCategory;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/model/ItemCategory;",
            ">;)Z"
        }
    .end annotation

    .line 772
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    .line 775
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 776
    return v0

    .line 778
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 779
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/model/ItemCategory;

    iget-object v2, v2, Lcom/alipay/mobile/antui/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/antui/model/ItemCategory;

    iget-object v3, v3, Lcom/alipay/mobile/antui/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 780
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/model/ItemCategory;

    iget-object v2, v2, Lcom/alipay/mobile/antui/model/ItemCategory;->categoryname:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/antui/model/ItemCategory;

    iget-object v3, v3, Lcom/alipay/mobile/antui/model/ItemCategory;->categoryname:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 778
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 781
    :cond_3
    :goto_1
    return v0

    .line 784
    .end local v1    # "i":I
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 773
    :cond_5
    :goto_2
    return v0
.end method

.method private menuBarScroll(Landroid/view/View;F)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F

    .line 977
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 978
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 979
    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->screenWidth:I

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    .line 980
    .local v2, "distance":I
    iget-object v3, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v2, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 981
    iput p2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentScroolBarLeft:F

    .line 982
    return-void
.end method

.method private moveScrollBarTo(FI)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "width"    # I

    .line 985
    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentScroolBarLeft:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 987
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->menuBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 989
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabSpace:I

    sub-int/2addr p2, v1

    .line 990
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v3, 0x0

    .line 991
    .local v3, "widthAnim":Landroid/animation/ValueAnimator;
    move-object v3, v1

    new-instance v4, Lcom/alipay/mobile/antui/segement/AUSegment$5;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/antui/segement/AUSegment$5;-><init>(Lcom/alipay/mobile/antui/segement/AUSegment;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 997
    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 999
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1000
    .local v1, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    iget v7, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentScroolBarLeft:F

    const/4 v8, 0x0

    invoke-direct {v6, v7, p1, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1002
    .local v6, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1003
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 1004
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1005
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1007
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 1008
    iget-object v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->menuBar:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "animationSet":Landroid/view/animation/AnimationSet;
    .end local v3    # "widthAnim":Landroid/animation/ValueAnimator;
    .end local v6    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    return-void

    .line 1011
    :catch_0
    move-exception v0

    .line 1012
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "moveScrollBarTo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AUSegment"

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private setAdd()V
    .locals 3

    .line 263
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isAdd:Z

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->addIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 265
    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->screenWidth:I

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->au_segment_add_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabContainerWidth:I

    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->addIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 268
    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->screenWidth:I

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabContainerWidth:I

    .line 270
    return-void
.end method

.method private setBarState()V
    .locals 4

    .line 875
    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentIndex:I

    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 876
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    iget v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentClickedOnMenu:Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    .line 877
    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->textColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 878
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 879
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentClickedOnMenu:Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->setTextBold(Z)V

    goto :goto_0

    .line 881
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/antui/R$color;->indicate_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->setInitTextColor(I)V

    .line 882
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentClickedOnMenu:Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->setTextBold(Z)V

    .line 884
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentClickedOnMenu:Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentCategoryTag:Ljava/lang/String;

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 888
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->setVisibility(I)V

    .line 889
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->menuBar:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 891
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->setVisibility(I)V

    .line 892
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->menuBar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 895
    :goto_1
    new-instance v0, Lcom/alipay/mobile/antui/segement/AUSegment$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/segement/AUSegment$3;-><init>(Lcom/alipay/mobile/antui/segement/AUSegment;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    return-void

    .line 905
    :catch_0
    move-exception v0

    .line 906
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setBarState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AUSegment"

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private setBottomLinePositionParams(ILandroid/graphics/Paint;)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 309
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->uniformlySpaced:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mSpaced:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->screenWidth:I

    if-lez v0, :cond_1

    .line 310
    if-eqz p2, :cond_1

    .line 311
    const-string v0, ""

    .line 312
    .local v0, "totalContent":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabCount:I

    if-ge v1, v2, :cond_0

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabNameArray:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    .end local v1    # "j":I
    :cond_0
    iget v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabContainerWidth:I

    int-to-float v1, v1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabCount:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mSpaced:I

    .line 317
    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->paddingDisUniformly:I

    .line 320
    .end local v0    # "totalContent":Ljava/lang/String;
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->uniformlySpaced:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mSpaced:I

    if-lez v0, :cond_2

    if-nez p2, :cond_4

    .line 321
    :cond_2
    if-eqz p2, :cond_4

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabTextWidth:[I

    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabNameArray:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, p1

    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->paddingDis:[I

    iget v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabContainerWidth:I

    iget v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabCount:I

    div-int v3, v1, v2

    iget-object v4, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabTextWidth:[I

    aget v5, v4, p1

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    aput v3, v0, p1

    .line 324
    iget-boolean v3, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->uniformlySpaced:Z

    if-nez v3, :cond_3

    div-int v3, v1, v2

    aget v5, v4, p1

    if-ge v3, v5, :cond_3

    .line 325
    const/4 v3, 0x0

    aput v3, v0, p1

    .line 326
    div-int/2addr v1, v2

    aput v1, v4, p1

    .line 328
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "paddingDis["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->paddingDis:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUSegment"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_4
    return-void
.end method

.method private setCurMenuState(Landroid/view/View;Lcom/alipay/mobile/antui/model/ItemCategory;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "item"    # Lcom/alipay/mobile/antui/model/ItemCategory;

    .line 945
    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentIndex:I

    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 946
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    iget v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentClickedOnMenu:Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentClickedOnMenu:Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    if-eqz v0, :cond_1

    .line 950
    nop

    .line 951
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 950
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->setInitTextColor(I)V

    .line 952
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentClickedOnMenu:Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->setTextBold(Z)V

    .line 954
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->textColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 955
    move-object v2, p1

    check-cast v2, Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 956
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->setTextBold(Z)V

    goto :goto_0

    .line 958
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$color;->indicate_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->setInitTextColor(I)V

    .line 959
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->setTextBold(Z)V

    .line 963
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabSwitchListener:Lcom/alipay/mobile/antui/segement/AUSegment$TabSwitchListener;

    if-eqz v0, :cond_3

    .line 964
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 965
    .local v0, "newIndex":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabSwitchListener:Lcom/alipay/mobile/antui/segement/AUSegment$TabSwitchListener;

    invoke-interface {v1, v0, p1}, Lcom/alipay/mobile/antui/segement/AUSegment$TabSwitchListener;->onTabClick(ILandroid/view/View;)V

    .line 968
    .end local v0    # "newIndex":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 969
    .local v0, "x":F
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->getTextWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/antui/segement/AUSegment;->moveScrollBarTo(FI)V

    .line 970
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->menuBarScroll(Landroid/view/View;F)V

    .line 972
    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentIndex:I

    .line 973
    return-void
.end method

.method private setCurrentIndex(I)V
    .locals 4
    .param p1, "index"    # I

    .line 1026
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 1027
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentIndex:I

    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1028
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    iget v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentClickedOnMenu:Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentClickedOnMenu:Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    if-eqz v0, :cond_2

    .line 1032
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->setInitTextColor(I)V

    .line 1033
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentClickedOnMenu:Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->setTextBold(Z)V

    .line 1035
    :cond_2
    iput p1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentIndex:I

    .line 1036
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 1037
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    iget v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentClickedOnMenu:Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    .line 1039
    if-eqz v0, :cond_4

    .line 1040
    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->textColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 1041
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1042
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentClickedOnMenu:Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->setTextBold(Z)V

    goto :goto_0

    .line 1044
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/antui/R$color;->indicate_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->setInitTextColor(I)V

    .line 1045
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentClickedOnMenu:Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->setTextBold(Z)V

    .line 1047
    :goto_0
    new-instance v0, Lcom/alipay/mobile/antui/segement/AUSegment$6;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/segement/AUSegment$6;-><init>(Lcom/alipay/mobile/antui/segement/AUSegment;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->post(Ljava/lang/Runnable;)Z

    .line 1059
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentClickedOnMenu:Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentCategoryTag:Ljava/lang/String;

    .line 1062
    :cond_4
    return-void
.end method

.method private setMenuCLick(Lcom/alipay/mobile/antui/segement/MenuItemLayout;Lcom/alipay/mobile/antui/model/ItemCategory;)V
    .locals 1
    .param p1, "menuItemLayout"    # Lcom/alipay/mobile/antui/segement/MenuItemLayout;
    .param p2, "item"    # Lcom/alipay/mobile/antui/model/ItemCategory;

    .line 930
    new-instance v0, Lcom/alipay/mobile/antui/segement/AUSegment$4;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/antui/segement/AUSegment$4;-><init>(Lcom/alipay/mobile/antui/segement/AUSegment;Lcom/alipay/mobile/antui/model/ItemCategory;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 942
    return-void
.end method

.method private setMenuItemLayout()V
    .locals 5

    .line 912
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 913
    new-instance v1, Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabSpace:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;-><init>(Landroid/content/Context;I)V

    .line 914
    .local v1, "itemLayout":Lcom/alipay/mobile/antui/segement/MenuItemLayout;
    iget-object v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/model/ItemCategory;

    .line 915
    .local v2, "item":Lcom/alipay/mobile/antui/model/ItemCategory;
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->setTag(Ljava/lang/Object;)V

    .line 917
    iget-object v3, v2, Lcom/alipay/mobile/antui/model/ItemCategory;->categoryname:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->setText(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/antui/R$color;->black:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->setInitTextColor(I)V

    .line 919
    iget v3, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabTextSize:F

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_0

    .line 920
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->setTextSize(F)V

    .line 922
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/antui/segement/AUSegment;->setMenuCLick(Lcom/alipay/mobile/antui/segement/MenuItemLayout;Lcom/alipay/mobile/antui/model/ItemCategory;)V

    .line 923
    iget-object v3, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->addView(Landroid/view/View;)V

    .line 912
    .end local v1    # "itemLayout":Lcom/alipay/mobile/antui/segement/MenuItemLayout;
    .end local v2    # "item":Lcom/alipay/mobile/antui/model/ItemCategory;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 925
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->invalidate()V

    .line 926
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->requestLayout()V

    .line 927
    return-void
.end method


# virtual methods
.method public addTextRightView(Landroid/view/View;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 589
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isScroll:Z

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    .line 592
    .local v0, "menuItemLayout":Lcom/alipay/mobile/antui/segement/MenuItemLayout;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v4, v3

    .line 594
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v4, v5

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, -0x3e900000    # -15.0f

    invoke-static {v6, v7}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 595
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v5, v6}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 596
    sget v5, Lcom/alipay/mobile/antui/R$id;->tv_menu_name:I

    invoke-virtual {v4, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 597
    sget v2, Lcom/alipay/mobile/antui/R$id;->tv_menu_name:I

    invoke-virtual {v4, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 598
    sget v1, Lcom/alipay/mobile/antui/R$id;->item_kernel:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    move-object v2, v3

    .line 599
    .local v2, "tabInner":Landroid/widget/RelativeLayout;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 600
    invoke-virtual {v2, p1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->rightViewMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    .end local v0    # "menuItemLayout":Lcom/alipay/mobile/antui/segement/MenuItemLayout;
    .end local v2    # "tabInner":Landroid/widget/RelativeLayout;
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabRl:[Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    array-length v5, v0

    if-ge p2, v5, :cond_4

    if-eqz p1, :cond_4

    aget-object v0, v0, p2

    if-eqz v0, :cond_4

    .line 604
    :cond_3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v4, v3

    .line 606
    .restart local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v4, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, -0x3f600000    # -5.0f

    invoke-static {v5, v6}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 607
    sget v0, Lcom/alipay/mobile/antui/R$id;->tab_tv:I

    invoke-virtual {v4, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 608
    sget v0, Lcom/alipay/mobile/antui/R$id;->tab_tv:I

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 609
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabRl:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, p2

    sget v1, Lcom/alipay/mobile/antui/R$id;->tab_inner:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v1, v3

    .line 610
    .local v1, "tabInner":Landroid/widget/RelativeLayout;
    move-object v1, v0

    if-eqz v0, :cond_4

    .line 611
    invoke-virtual {v1, p1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    .end local v1    # "tabInner":Landroid/widget/RelativeLayout;
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    return-void
.end method

.method public addTextRightView(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "position"    # I

    .line 624
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isScroll:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 625
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_0

    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    move-object v2, v1

    .line 627
    .local v2, "menuItemLayout":Lcom/alipay/mobile/antui/segement/MenuItemLayout;
    sget v3, Lcom/alipay/mobile/antui/R$id;->item_kernel:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 628
    .local v1, "tabInner":Landroid/widget/RelativeLayout;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 629
    invoke-virtual {v1, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->rightViewMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    return-void

    .line 633
    .end local v1    # "tabInner":Landroid/widget/RelativeLayout;
    .end local v2    # "menuItemLayout":Lcom/alipay/mobile/antui/segement/MenuItemLayout;
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabRl:[Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    array-length v2, v0

    if-ge p3, v2, :cond_4

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    aget-object v2, v0, p3

    if-eqz v2, :cond_4

    .line 635
    :cond_3
    aget-object v0, v0, p3

    sget v2, Lcom/alipay/mobile/antui/R$id;->tab_inner:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 636
    .restart local v1    # "tabInner":Landroid/widget/RelativeLayout;
    move-object v1, v0

    if-eqz v0, :cond_4

    .line 637
    invoke-virtual {v1, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    .end local v1    # "tabInner":Landroid/widget/RelativeLayout;
    :cond_4
    return-void
.end method

.method public adjustLinePosition(IF)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .line 419
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isScroll:Z

    if-eqz v0, :cond_0

    return-void

    .line 420
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adjustLinePosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUSegment"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->uniformlySpaced:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/segement/AUSegment;->getUSOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 423
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabWidth:[I

    aget v0, v0, p1

    int-to-float v0, v0

    mul-float v0, v0, p2

    .line 424
    .local v0, "t":F
    iget-object v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 425
    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabButtomLine:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 426
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/segement/AUSegment;->initButtomLineDrawable(I)V

    .line 427
    .end local v0    # "t":F
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->matrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabWidthEqualDivScreen:I

    mul-int v2, v2, p1

    iget-object v3, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->paddingDis:[I

    aget v3, v3, p1

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 429
    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabWidthEqualDivScreen:I

    int-to-float v0, v0

    mul-float v0, v0, p2

    .line 430
    .restart local v0    # "t":F
    iget-object v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 431
    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabButtomLine:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 433
    .end local v0    # "t":F
    return-void
.end method

.method public computeScroll()V
    .locals 1

    .line 525
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isScroll:Z

    if-nez v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 528
    .local v0, "currentX":I
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->adjustLinePosition(I)V

    .line 529
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->postInvalidate()V

    .line 531
    .end local v0    # "currentX":I
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->computeScroll()V

    .line 533
    :cond_1
    return-void
.end method

.method public getAddIcon()Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1

    .line 1074
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->addIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-object v0
.end method

.method public getBottomLine()Landroid/view/View;
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->bottomLine:Landroid/view/View;

    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .line 1070
    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentIndex:I

    return v0
.end method

.method public getRightViewScroll(I)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I

    .line 694
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isScroll:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 695
    return-object v1

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->rightViewMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->rightViewMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 698
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getRls()[Landroid/widget/RelativeLayout;
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabRl:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected getTabViews(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 273
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isScroll:Z

    if-eqz v0, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 275
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mSpaced:I

    .line 276
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    iget v4, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabCount:I

    if-ge v1, v4, :cond_4

    .line 277
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/antui/R$layout;->ap_default_tab_view:I

    .line 278
    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 279
    .local v4, "rl":Landroid/widget/RelativeLayout;
    iget-object v5, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabRl:[Landroid/widget/RelativeLayout;

    aput-object v4, v5, v1

    .line 280
    sget v5, Lcom/alipay/mobile/antui/R$id;->tab_tv:I

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 281
    .local v3, "textView":Landroid/widget/TextView;
    move-object v3, v5

    iget-object v6, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabNameArray:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v5, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_1

    .line 283
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 285
    :cond_1
    iget v5, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabTextSize:F

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_2

    .line 286
    invoke-virtual {v3, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 288
    :cond_2
    iget-object v5, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabViews:[Landroid/widget/TextView;

    aput-object v3, v5, v1

    .line 289
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 290
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-direct {p0, v1, v5}, Lcom/alipay/mobile/antui/segement/AUSegment;->setBottomLinePositionParams(ILandroid/graphics/Paint;)V

    .line 292
    iget-boolean v6, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->uniformlySpaced:Z

    const/4 v7, -0x1

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mSpaced:I

    if-lez v6, :cond_3

    if-eqz v5, :cond_3

    .line 293
    iget-object v6, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabNameArray:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget v8, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mSpaced:I

    int-to-float v8, v8

    add-float/2addr v6, v8

    float-to-int v6, v6

    .line 294
    .local v6, "curTabWidth":I
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v7, v8

    .line 296
    .local v7, "llParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabWidth:[I

    aput v6, v8, v1

    .line 297
    iget-object v8, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabTextWidth:[I

    iget-object v9, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabNameArray:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v9, v9

    aput v9, v8, v1

    .line 298
    .end local v6    # "curTabWidth":I
    goto :goto_1

    .line 299
    .end local v7    # "llParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v8, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v7, v6

    .line 303
    .restart local v7    # "llParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    const/16 v6, 0x11

    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 304
    iget-object v6, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    .end local v3    # "textView":Landroid/widget/TextView;
    .end local v4    # "rl":Landroid/widget/RelativeLayout;
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v7    # "llParams":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 306
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public getTextViews()[Landroid/widget/TextView;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabViews:[Landroid/widget/TextView;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 147
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->Segment_tabCount:I

    const/4 v1, 0x4

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabCount:I

    .line 148
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->Segment_tabTextArray:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabTextArrayStr:Ljava/lang/String;

    .line 149
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->Segment_uniformlySpaced:I

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->uniformlySpaced:Z

    .line 150
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->Segment_scroll:I

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isScroll:Z

    .line 151
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->Segment_repeatClick:I

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->repeatClick:Z

    .line 152
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->Segment_add:I

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isAdd:Z

    .line 153
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->Segment_tabSpace:I

    iget v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabSpace:I

    invoke-virtual {p3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabSpace:I

    .line 154
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->Segment_edgeSpace:I

    iget v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->edgeSpace:I

    invoke-virtual {p3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->edgeSpace:I

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabTextArrayStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabTextArrayStr:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabNameArray:[Ljava/lang/String;

    .line 157
    array-length v1, v0

    iput v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabCount:I

    .line 158
    array-length v1, v0

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabViews:[Landroid/widget/TextView;

    .line 159
    array-length v1, v0

    new-array v1, v1, [Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabRl:[Landroid/widget/RelativeLayout;

    .line 160
    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabWidth:[I

    .line 161
    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabTextWidth:[I

    .line 162
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->paddingDis:[I

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabNameArray:[Ljava/lang/String;

    const/4 v2, 0x0

    sget v3, Lcom/alipay/mobile/antui/R$styleable;->Segment_tab1Text:I

    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabNameArray:[Ljava/lang/String;

    sget v2, Lcom/alipay/mobile/antui/R$styleable;->Segment_tab2Text:I

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabNameArray:[Ljava/lang/String;

    const/4 v2, 0x2

    sget v3, Lcom/alipay/mobile/antui/R$styleable;->Segment_tab3Text:I

    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabNameArray:[Ljava/lang/String;

    sget v2, Lcom/alipay/mobile/antui/R$styleable;->Segment_tab4Text:I

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    .line 168
    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabCount:I

    if-le v0, v1, :cond_1

    .line 169
    iput v3, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabCount:I

    .line 173
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabNameArray:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 174
    aget-object v2, v1, v0

    if-nez v2, :cond_2

    .line 175
    const-string v2, ""

    aput-object v2, v1, v0

    .line 173
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public init(Ljava/util/List;)V
    .locals 1
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/model/ItemCategory;",
            ">;)V"
        }
    .end annotation

    .line 788
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->init(Ljava/util/List;Z)V

    .line 789
    return-void
.end method

.method public init(Ljava/util/List;Z)V
    .locals 2
    .param p1, "list"    # Ljava/util/List;
    .param p2, "reset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/model/ItemCategory;",
            ">;Z)V"
        }
    .end annotation

    .line 842
    if-nez p1, :cond_0

    .line 843
    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mData:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 848
    if-nez p2, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/antui/segement/AUSegment;->isSameContent(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    return-void

    .line 853
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mData:Ljava/util/List;

    .line 855
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_2

    .line 856
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 857
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->removeAllViews()V

    .line 858
    iput v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentIndex:I

    .line 859
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentScroolBarLeft:F

    .line 862
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->setMenuItemLayout()V

    .line 863
    invoke-direct {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->setBarState()V

    .line 864
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->rightViewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 865
    return-void
.end method

.method public initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 219
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->Segment_buttomLineColor:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->Segment_buttomLineColor:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->buttomLineColor:I

    .line 222
    :cond_0
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->Segment_tabTextColor:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->Segment_tabTextColor:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->textColor:Landroid/content/res/ColorStateList;

    .line 225
    :cond_1
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->Segment_tabTextSize:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabTextSize:F

    .line 226
    return-void
.end method

.method public initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 189
    return-void
.end method

.method public initStyleByTheme(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 198
    invoke-static {}, Lcom/alipay/mobile/antui/theme/AUThemeManager;->getCurrentTheme()Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    move-result-object v0

    const/4 v1, 0x0

    .line 200
    .local v1, "theme":Lcom/alipay/mobile/antui/theme/AUAbsTheme;
    move-object v1, v0

    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SEGMENT_TEXTCOLOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SEGMENT_TEXTCOLOR:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColorStateList(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->textColor:Landroid/content/res/ColorStateList;

    .line 204
    :cond_0
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SEGMENT_BOTTOM_COLOR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SEGMENT_BOTTOM_COLOR:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->buttomLineColor:I

    .line 208
    :cond_1
    return-void
.end method

.method public isViewAllVisible(Landroid/view/View;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 708
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->screenWidth:I

    const/4 v2, 0x2

    const-string v3, "AUSegment"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v0, v1, :cond_0

    .line 709
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "view is not all Visible: screenWidth = %s, viewRight = %s "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    return v5

    .line 712
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "view is all Visible: screenWidth = %s, viewRight = %s "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 335
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isScroll:Z

    if-nez v0, :cond_7

    .line 336
    sub-int v0, p4, p2

    iget v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabCount:I

    div-int/2addr v0, v1

    const/4 v2, 0x0

    .line 337
    .local v2, "newlineWidth":I
    move v2, v0

    iget v3, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabWidthEqualDivScreen:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->lineDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 338
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isAdd:Z

    if-eqz v0, :cond_1

    .line 339
    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabContainerWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabWidthEqualDivScreen:I

    goto :goto_0

    .line 341
    :cond_1
    iput v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabWidthEqualDivScreen:I

    .line 343
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->initButtomLineDrawable()V

    .line 345
    :cond_2
    sub-int v0, p4, p2

    iget v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->screenWidth:I

    if-ne v0, v1, :cond_3

    sub-int v0, p4, p2

    iget v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabContainerWidth:I

    if-eq v0, v1, :cond_6

    .line 346
    :cond_3
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isAdd:Z

    if-eqz v0, :cond_4

    .line 347
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->au_segment_add_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabContainerWidth:I

    goto :goto_1

    .line 349
    :cond_4
    sub-int v0, p4, p2

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabContainerWidth:I

    .line 351
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabViews:[Landroid/widget/TextView;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabViews:[Landroid/widget/TextView;

    array-length v3, v1

    if-ge v0, v3, :cond_6

    .line 353
    aget-object v3, v1, v0

    if-eqz v3, :cond_5

    .line 354
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/antui/segement/AUSegment;->setBottomLinePositionParams(ILandroid/graphics/Paint;)V

    .line 352
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 359
    .end local v0    # "i":I
    :cond_6
    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->onLayout(ZIIII)V

    .line 361
    invoke-direct {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->adjustTabButtomLine()V

    .line 362
    .end local v2    # "newlineWidth":I
    return-void

    .line 363
    :cond_7
    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->onLayout(ZIIII)V

    .line 365
    return-void
.end method

.method public removeTextRightView(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 649
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isScroll:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 650
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    move-object v2, v1

    .line 652
    .local v2, "menuItemLayout":Lcom/alipay/mobile/antui/segement/MenuItemLayout;
    sget v3, Lcom/alipay/mobile/antui/R$id;->item_kernel:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 653
    .local v1, "tabInner":Landroid/widget/RelativeLayout;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 654
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 655
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->rightViewMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    :cond_1
    return-void

    .line 658
    .end local v1    # "tabInner":Landroid/widget/RelativeLayout;
    .end local v2    # "menuItemLayout":Lcom/alipay/mobile/antui/segement/MenuItemLayout;
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabRl:[Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    array-length v2, v0

    if-ge p2, v2, :cond_4

    if-eqz p1, :cond_4

    aget-object v2, v0, p2

    if-eqz v2, :cond_4

    .line 660
    :cond_3
    aget-object v0, v0, p2

    sget v2, Lcom/alipay/mobile/antui/R$id;->tab_inner:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 661
    .restart local v1    # "tabInner":Landroid/widget/RelativeLayout;
    move-object v1, v0

    if-eqz v0, :cond_4

    .line 662
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 665
    .end local v1    # "tabInner":Landroid/widget/RelativeLayout;
    :cond_4
    return-void
.end method

.method public removeTextRightViewScroll(I)V
    .locals 3
    .param p1, "position"    # I

    .line 673
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isScroll:Z

    if-nez v0, :cond_0

    .line 674
    return-void

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->rightViewMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    .line 680
    sget v1, Lcom/alipay/mobile/antui/R$id;->item_kernel:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 681
    .local v1, "tabInner":Landroid/widget/RelativeLayout;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 682
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->rightViewMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 683
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->rightViewMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    :cond_2
    return-void

    .line 677
    .end local v1    # "tabInner":Landroid/widget/RelativeLayout;
    :cond_3
    :goto_0
    return-void
.end method

.method public resetTabView([Ljava/lang/String;)V
    .locals 2
    .param p1, "tabNameArray"    # [Ljava/lang/String;

    .line 395
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isScroll:Z

    if-eqz v0, :cond_0

    return-void

    .line 396
    :cond_0
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    .line 399
    :cond_1
    array-length v0, p1

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabCount:I

    .line 400
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentPos:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentPos:I

    .line 401
    iput-object p1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabNameArray:[Ljava/lang/String;

    .line 403
    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabCount:I

    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabViews:[Landroid/widget/TextView;

    .line 404
    new-array v0, v0, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabRl:[Landroid/widget/RelativeLayout;

    .line 405
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabWidth:[I

    .line 406
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabTextWidth:[I

    .line 407
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->paddingDis:[I

    .line 408
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->getTabViews(Landroid/content/Context;)V

    .line 409
    invoke-direct {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->adjustTabButtomLine()V

    .line 410
    return-void

    .line 397
    :cond_2
    :goto_0
    return-void
.end method

.method public selectTab(I)V
    .locals 5
    .param p1, "position"    # I

    .line 461
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isScroll:Z

    if-nez v0, :cond_5

    .line 462
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabCount:I

    if-ge v0, v1, :cond_4

    .line 466
    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabRl:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 467
    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabRl:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    sget v4, Lcom/alipay/mobile/antui/R$id;->tab_tv:I

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    if-ne p1, v0, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 468
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->allowDuplicateClick:Z

    if-eqz v1, :cond_2

    .line 469
    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabRl:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    goto :goto_3

    .line 471
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabRl:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    if-eq p1, v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    .end local v0    # "i":I
    :cond_4
    iput p1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentPos:I

    .line 476
    :cond_5
    return-void
.end method

.method public selectTabAndAdjustLine(I)V
    .locals 1
    .param p1, "position"    # I

    .line 485
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isScroll:Z

    if-eqz v0, :cond_0

    return-void

    .line 486
    :cond_0
    const/16 v0, 0xfa

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->selectTabAndAdjustLine(II)V

    .line 487
    return-void
.end method

.method public selectTabAndAdjustLine(II)V
    .locals 13
    .param p1, "position"    # I
    .param p2, "during"    # I

    .line 498
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isScroll:Z

    if-eqz v0, :cond_0

    return-void

    .line 499
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentPos:I

    if-ne p1, v0, :cond_1

    .line 500
    return-void

    .line 502
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/segement/AUSegment;->selectTab(I)V

    .line 503
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 504
    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentPos:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/segement/AUSegment;->adjustLinePosition(IF)V

    .line 505
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 508
    :cond_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/segement/AUSegment;->initButtomLineDrawable(I)V

    .line 510
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->uniformlySpaced:Z

    if-eqz v0, :cond_3

    .line 511
    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->scroller:Landroid/widget/Scroller;

    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentPos:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->getUSOffset(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/segement/AUSegment;->getUSOffset(I)I

    move-result v0

    iget v4, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentPos:I

    .line 512
    invoke-direct {p0, v4}, Lcom/alipay/mobile/antui/segement/AUSegment;->getUSOffset(I)I

    move-result v4

    sub-int v4, v0, v4

    const/4 v5, 0x0

    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentPos:I

    sub-int/2addr v0, p1

    .line 513
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int v6, p2, v0

    .line 511
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 515
    :cond_3
    iget-object v7, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->scroller:Landroid/widget/Scroller;

    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentPos:I

    iget v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabWidthEqualDivScreen:I

    mul-int v2, v0, v1

    iget-object v3, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->paddingDis:[I

    aget v4, v3, v0

    add-int v8, v2, v4

    const/4 v9, 0x0

    mul-int v2, p1, v1

    aget v4, v3, p1

    add-int/2addr v2, v4

    mul-int v1, v1, v0

    aget v3, v3, v0

    add-int/2addr v1, v3

    sub-int v10, v2, v1

    const/4 v11, 0x0

    sub-int/2addr v0, p1

    .line 517
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int v12, p2, v0

    .line 515
    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 519
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->invalidate()V

    .line 520
    iput p1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentPos:I

    .line 521
    return-void
.end method

.method public setAllowDuplicateClick(Z)V
    .locals 0
    .param p1, "allowDuplicateClick"    # Z

    .line 704
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->allowDuplicateClick:Z

    .line 705
    return-void
.end method

.method public setAnchor(I)V
    .locals 5
    .param p1, "anchor"    # I

    .line 798
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getChildCount()I

    move-result v0

    const-string v1, "AUSegment"

    if-gtz v0, :cond_0

    .line 799
    const-string/jumbo v0, "\u6ca1\u6709\u951a\u70b9\u5bf9\u5e94\u7684view,anchor = %s, \u6ca1\u6709\u9009\u9879"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ge v0, p1, :cond_1

    .line 804
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v3, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    invoke-virtual {v3}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string/jumbo v2, "\u951a\u70b9\u4f4d\u7f6e\u8d85\u8d8a\u9009\u9879\u603b\u6570,anchor = %s, \u9009\u9879\u603b\u6570 = %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    return-void

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 809
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v3, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    invoke-virtual {v3}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string/jumbo v2, "\u6ca1\u6709\u951a\u70b9\u5bf9\u5e94\u7684view,anchor = %s, \u9009\u9879\u603b\u6570 = %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    return-void

    .line 813
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->isViewAllVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 814
    const-string/jumbo v0, "\u4e0d\u662f\u5168\u90e8\u663e\u793a\u5728\u5c4f\u5e55\u5185\uff0c\u91cd\u65b0\u5b9a\u4f4d"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    new-instance v0, Lcom/alipay/mobile/antui/segement/AUSegment$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/antui/segement/AUSegment$2;-><init>(Lcom/alipay/mobile/antui/segement/AUSegment;I)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 831
    :cond_3
    const-string/jumbo v0, "\u5168\u90e8\u663e\u793a\u5728\u5c4f\u5e55\u5185\uff0c\u4e0d\u91cd\u65b0\u5b9a\u4f4d"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method public setBottomLineColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 387
    iput p1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->buttomLineColor:I

    .line 388
    invoke-direct {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->initButtomLineDrawable()V

    .line 389
    return-void
.end method

.method public setCurrentSelTab(I)V
    .locals 1
    .param p1, "position"    # I

    .line 728
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isScroll:Z

    if-nez v0, :cond_0

    .line 729
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/segement/AUSegment;->selectTab(I)V

    .line 730
    iput p1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->currentPos:I

    .line 731
    invoke-direct {p0}, Lcom/alipay/mobile/antui/segement/AUSegment;->adjustTabButtomLine()V

    return-void

    .line 733
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/segement/AUSegment;->setCurrentIndex(I)V

    .line 735
    return-void
.end method

.method public setDivideAutoSize(Z)V
    .locals 1
    .param p1, "divideAutoSize"    # Z

    .line 868
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->setDivideAutoSize(Z)V

    .line 869
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->invalidate()V

    .line 870
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->requestLayout()V

    .line 871
    return-void
.end method

.method public setTabSwitchListener(Lcom/alipay/mobile/antui/segement/AUSegment$TabSwitchListener;)V
    .locals 3
    .param p1, "tabSwitchListener"    # Lcom/alipay/mobile/antui/segement/AUSegment$TabSwitchListener;

    .line 541
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->isScroll:Z

    if-nez v0, :cond_1

    .line 542
    iput-object p1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabSwitchListener:Lcom/alipay/mobile/antui/segement/AUSegment$TabSwitchListener;

    .line 543
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabCount:I

    if-ge v0, v1, :cond_0

    .line 544
    new-instance v1, Lcom/alipay/mobile/antui/segement/AUSegment$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/segement/AUSegment$1;-><init>(Lcom/alipay/mobile/antui/segement/AUSegment;)V

    .line 557
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/segement/AUSegment$1;->a(I)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 558
    .local v1, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabRl:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    .end local v1    # "onClickListener":Landroid/view/View$OnClickListener;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    return-void

    .line 561
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabSwitchListener:Lcom/alipay/mobile/antui/segement/AUSegment$TabSwitchListener;

    .line 563
    return-void
.end method

.method public upDateTheme(Landroid/content/Context;Lcom/alipay/mobile/antui/theme/AUAbsTheme;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    .line 231
    return-void
.end method

.method public updateWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .line 1018
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->menuBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 1019
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object v1, v0

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1020
    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabSpace:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1021
    iget v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->tabSpace:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1022
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment;->menuBar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1023
    return-void
.end method
