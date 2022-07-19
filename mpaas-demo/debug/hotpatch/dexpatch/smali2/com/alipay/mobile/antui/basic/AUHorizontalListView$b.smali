.class final Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;
.super Ljava/lang/Object;
.source "AUHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 6377
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 6388
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;->a:I

    return v0
.end method

.method final a(II)V
    .locals 0
    .param p1, "selectedPosition"    # I
    .param p2, "amountToScroll"    # I

    .line 6383
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;->a:I

    .line 6384
    iput p2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;->b:I

    .line 6385
    return-void
.end method

.method public final b()I
    .locals 1

    .line 6392
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;->b:I

    return v0
.end method
