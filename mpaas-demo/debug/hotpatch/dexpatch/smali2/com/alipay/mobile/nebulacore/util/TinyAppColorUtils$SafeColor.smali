.class public Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
.super Ljava/lang/Object;
.source "TinyAppColorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SafeColor"
.end annotation


# static fields
.field public static final INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;


# instance fields
.field public final valid:Z

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "value"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->valid:Z

    .line 42
    iput p1, p0, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->value:I

    .line 43
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "valid"    # Z

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->valid:Z

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->value:I

    .line 38
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0
    .param p1, "valid"    # Z
    .param p2, "value"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->valid:Z

    .line 47
    iput p2, p0, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->value:I

    .line 48
    return-void
.end method
