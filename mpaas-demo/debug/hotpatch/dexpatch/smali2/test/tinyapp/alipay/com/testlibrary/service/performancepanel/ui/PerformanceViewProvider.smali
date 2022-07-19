.class public Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;
.super Ljava/lang/Object;
.source "PerformanceViewProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:I


# instance fields
.field private d:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    nop

    .line 39
    const/16 v0, 0xc8

    sput v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;->a:I

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/util/ScreenUtil;->a(I)I

    move-result v0

    sput v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;->b:I

    .line 43
    invoke-static {}, Ltest/tinyapp/alipay/com/testlibrary/util/ScreenUtil;->a()I

    move-result v0

    sput v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 53
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 55
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object v1, v0

    const v2, 0x800035

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 61
    sget v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;->c:I

    sget v2, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;->b:I

    sub-int/2addr v0, v2

    .line 62
    invoke-static {p0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;->b(Landroid/app/Activity;)I

    move-result v2

    .line 61
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 66
    return-object v1
.end method

.method private static a(Landroid/content/Context;Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "performanceViewAdapter"    # Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;

    .line 151
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    .local v1, "recyclerViewLayout":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-static {v2}, Ltest/tinyapp/alipay/com/testlibrary/util/ScreenUtil;->a(I)I

    move-result v2

    .line 155
    .local v2, "marginPx":I
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 156
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 158
    new-instance v3, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$SpaceItemDecoration;

    const/4 v4, 0x5

    invoke-static {v4}, Ltest/tinyapp/alipay/com/testlibrary/util/ScreenUtil;->a(I)I

    move-result v4

    invoke-direct {v3, v4}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$SpaceItemDecoration;-><init>(I)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 159
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 160
    return-object v0
.end method

.method private static b(Landroid/app/Activity;)I
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 71
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$dimen;->h5_title_height:I

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 74
    .local v0, "titleBarHeight":F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 75
    .local v1, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 76
    iget v2, v1, Landroid/graphics/Rect;->top:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .local v2, "statusBarHeight":I
    float-to-int v3, v0

    add-int/2addr v3, v2

    return v3

    .line 78
    .end local v0    # "titleBarHeight":F
    .end local v1    # "frame":Landroid/graphics/Rect;
    .end local v2    # "statusBarHeight":I
    :catchall_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTitleAndStatusBarHeight...e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PerformanceViewProvider"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x49

    return v1
.end method

.method private b(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    new-instance v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider$a;

    invoke-direct {v0, p1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 95
    .local v2, "linearLayout":Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider$a;
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider$a;->setOrientation(I)V

    .line 97
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v3, 0x8

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-direct {v0, v3, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 99
    .local v0, "roundRectShape":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object v4, v1

    .line 100
    .local v4, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    move-object v4, v3

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const-string v5, "#CC606066"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    invoke-virtual {v2, v4}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider$a;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider$a;->setClickable(Z)V

    .line 103
    new-instance v3, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider$1;

    invoke-direct {v3, p0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider$1;-><init>(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;)V

    invoke-virtual {v2, v3}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider$a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    invoke-static {p1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;->c(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider$a;->addView(Landroid/view/View;)V

    .line 111
    invoke-static {p1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;->d(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider$a;->addView(Landroid/view/View;)V

    .line 113
    new-instance v3, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;

    invoke-direct {v3, p1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;->d:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;

    .line 114
    invoke-virtual {v3, v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->a(Ljava/util/List;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;

    .line 115
    iget-object v1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;->d:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;

    invoke-static {p1, v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;->a(Landroid/content/Context;Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v2, v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider$a;->addView(Landroid/view/View;)V

    .line 117
    return-object v2

    nop

    :array_0
    .array-data 4
        0x41800000    # 16.0f
        0x41800000    # 16.0f
        0x0
        0x0
        0x0
        0x0
        0x41800000    # 16.0f
        0x41800000    # 16.0f
    .end array-data
.end method

.method private static c(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 122
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, "textView":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 125
    .local v1, "textViewLayout":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-static {v2}, Ltest/tinyapp/alipay/com/testlibrary/util/ScreenUtil;->a(I)I

    move-result v2

    .line 126
    .local v2, "marginPx":I
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 129
    const-string v3, "\u6027\u80fd\u9762\u677f"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const-string v3, "#FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    return-object v0
.end method

.method private static d(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 137
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, "whiteLine":Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 140
    .local v1, "whiteLineLayout":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-static {v2}, Ltest/tinyapp/alipay/com/testlibrary/util/ScreenUtil;->a(I)I

    move-result v2

    .line 141
    .local v2, "marginPx":I
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 142
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    const-string v3, "#FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 145
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0, p1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;->b(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;
    .locals 1
    .param p1, "displayItemInfoList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;",
            ">;)",
            "Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;->d:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;

    invoke-virtual {v0, p1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->a(Ljava/util/List;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;

    .line 86
    return-object p0
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .param p1, "newInfoList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;->d:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;

    invoke-virtual {v0, p1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->b(Ljava/util/List;)V

    .line 91
    return-void
.end method
