.class public final Lcom/alipay/mobile/nebulauc/fatbundle/api/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/fatbundle/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final keyboard:[I

.field public static final keyboard_randomkeys:I = 0x0

.field public static final keyboard_xml:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/nebulauc/fatbundle/api/R$styleable;->keyboard:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f040312
        0x7f04042c
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
