.class public final Lcom/alipay/mobile/nebula/fatbundle/api/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/fatbundle/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final H5DotView:[I

.field public static final H5DotView_dotColor:I = 0x0

.field public static final H5TabLayout:[I

.field public static final H5TabLayout_tabBackground:I = 0x0

.field public static final H5TabLayout_tabIndicatorColor:I = 0x1

.field public static final H5TabLayout_tabIndicatorHeight:I = 0x2

.field public static final H5TabLayout_tabIndicatorScrollable:I = 0x3

.field public static final H5TabLayout_tabMaxWidth:I = 0x4

.field public static final H5TabLayout_tabMinWidth:I = 0x5

.field public static final H5TabLayout_tabPadding:I = 0x6

.field public static final H5TabLayout_tabSelectedTextColor:I = 0x7

.field public static final H5TabLayout_tabTextAppearance:I = 0x8

.field public static final H5TabLayout_tabTextColor:I = 0x9

.field public static final apWebView:[I

.field public static final apWebView_bizType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x7f04012d

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/alipay/mobile/nebula/fatbundle/api/R$styleable;->H5DotView:[I

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/alipay/mobile/nebula/fatbundle/api/R$styleable;->H5TabLayout:[I

    new-array v0, v0, [I

    const v1, 0x7f040065

    aput v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/nebula/fatbundle/api/R$styleable;->apWebView:[I

    return-void

    :array_0
    .array-data 4
        0x7f040382
        0x7f04038b
        0x7f04038e
        0x7f04038f
        0x7f040391
        0x7f040392
        0x7f040394
        0x7f04039a
        0x7f04039d
        0x7f04039f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
