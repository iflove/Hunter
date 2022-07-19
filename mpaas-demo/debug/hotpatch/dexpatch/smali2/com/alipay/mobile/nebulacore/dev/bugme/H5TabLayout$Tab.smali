.class public final Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;
.super Ljava/lang/Object;
.source "H5TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:I

.field private final c:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)V
    .locals 1
    .param p1, "parent"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->b:I

    .line 498
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->c:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 499
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    .line 483
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->c:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    return-object v0
.end method


# virtual methods
.method final a(I)V
    .locals 0
    .param p1, "position"    # I

    .line 512
    iput p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->b:I

    .line 513
    return-void
.end method

.method public final getPosition()I
    .locals 1

    .line 508
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->b:I

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final select()V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->c:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->a(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)V

    .line 544
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 532
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->a:Ljava/lang/CharSequence;

    .line 533
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->b:I

    if-ltz v0, :cond_0

    .line 534
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->c:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->a(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;I)V

    .line 536
    :cond_0
    return-object p0
.end method
