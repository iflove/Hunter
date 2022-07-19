.class public final enum Lcom/alipay/mpaas/bundle/record/OpType;
.super Ljava/lang/Enum;
.source "OpType.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mpaas/bundle/record/OpType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alipay/mpaas/bundle/record/OpType;

.field public static final enum b:Lcom/alipay/mpaas/bundle/record/OpType;

.field public static final enum c:Lcom/alipay/mpaas/bundle/record/OpType;

.field public static final enum d:Lcom/alipay/mpaas/bundle/record/OpType;

.field private static final synthetic f:[Lcom/alipay/mpaas/bundle/record/OpType;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 9
    new-instance v0, Lcom/alipay/mpaas/bundle/record/OpType;

    const-string v1, "CHANGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/mpaas/bundle/record/OpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mpaas/bundle/record/OpType;->a:Lcom/alipay/mpaas/bundle/record/OpType;

    .line 10
    new-instance v1, Lcom/alipay/mpaas/bundle/record/OpType;

    const-string v3, "REMOVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/alipay/mpaas/bundle/record/OpType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alipay/mpaas/bundle/record/OpType;->b:Lcom/alipay/mpaas/bundle/record/OpType;

    .line 11
    new-instance v3, Lcom/alipay/mpaas/bundle/record/OpType;

    const-string v5, "ADD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/alipay/mpaas/bundle/record/OpType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/alipay/mpaas/bundle/record/OpType;->c:Lcom/alipay/mpaas/bundle/record/OpType;

    .line 12
    new-instance v5, Lcom/alipay/mpaas/bundle/record/OpType;

    const-string v7, "NOCHANGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/alipay/mpaas/bundle/record/OpType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/alipay/mpaas/bundle/record/OpType;->d:Lcom/alipay/mpaas/bundle/record/OpType;

    .line 8
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/alipay/mpaas/bundle/record/OpType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/alipay/mpaas/bundle/record/OpType;->f:[Lcom/alipay/mpaas/bundle/record/OpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/alipay/mpaas/bundle/record/OpType;->e:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mpaas/bundle/record/OpType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 8
    const-class v0, Lcom/alipay/mpaas/bundle/record/OpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mpaas/bundle/record/OpType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mpaas/bundle/record/OpType;
    .locals 1

    .line 8
    sget-object v0, Lcom/alipay/mpaas/bundle/record/OpType;->f:[Lcom/alipay/mpaas/bundle/record/OpType;

    invoke-virtual {v0}, [Lcom/alipay/mpaas/bundle/record/OpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mpaas/bundle/record/OpType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/alipay/mpaas/bundle/record/OpType;->e:I

    return v0
.end method
