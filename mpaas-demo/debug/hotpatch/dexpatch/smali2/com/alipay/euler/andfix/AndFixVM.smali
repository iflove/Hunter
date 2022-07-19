.class public final enum Lcom/alipay/euler/andfix/AndFixVM;
.super Ljava/lang/Enum;
.source "AndFixVM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/euler/andfix/AndFixVM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/euler/andfix/AndFixVM;

.field public static final enum AOC:Lcom/alipay/euler/andfix/AndFixVM;

.field public static final enum ART:Lcom/alipay/euler/andfix/AndFixVM;

.field public static final enum Dalvik:Lcom/alipay/euler/andfix/AndFixVM;

.field public static final enum Lemur:Lcom/alipay/euler/andfix/AndFixVM;

.field public static final enum NotSupport:Lcom/alipay/euler/andfix/AndFixVM;


# instance fields
.field name:Ljava/lang/String;

.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 9
    new-instance v0, Lcom/alipay/euler/andfix/AndFixVM;

    const-string v1, "NotSupport"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/alipay/euler/andfix/AndFixVM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/euler/andfix/AndFixVM;->NotSupport:Lcom/alipay/euler/andfix/AndFixVM;

    .line 10
    new-instance v1, Lcom/alipay/euler/andfix/AndFixVM;

    const-string v3, "Dalvik"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v3}, Lcom/alipay/euler/andfix/AndFixVM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/alipay/euler/andfix/AndFixVM;->Dalvik:Lcom/alipay/euler/andfix/AndFixVM;

    .line 11
    new-instance v3, Lcom/alipay/euler/andfix/AndFixVM;

    const-string v5, "ART"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6, v5}, Lcom/alipay/euler/andfix/AndFixVM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/alipay/euler/andfix/AndFixVM;->ART:Lcom/alipay/euler/andfix/AndFixVM;

    .line 12
    new-instance v5, Lcom/alipay/euler/andfix/AndFixVM;

    const-string v7, "Lemur"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8, v7}, Lcom/alipay/euler/andfix/AndFixVM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/alipay/euler/andfix/AndFixVM;->Lemur:Lcom/alipay/euler/andfix/AndFixVM;

    .line 13
    new-instance v7, Lcom/alipay/euler/andfix/AndFixVM;

    const-string v9, "AOC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10, v9}, Lcom/alipay/euler/andfix/AndFixVM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/alipay/euler/andfix/AndFixVM;->AOC:Lcom/alipay/euler/andfix/AndFixVM;

    .line 7
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/alipay/euler/andfix/AndFixVM;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/alipay/euler/andfix/AndFixVM;->$VALUES:[Lcom/alipay/euler/andfix/AndFixVM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/alipay/euler/andfix/AndFixVM;->value:I

    .line 22
    iput-object p4, p0, Lcom/alipay/euler/andfix/AndFixVM;->name:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/euler/andfix/AndFixVM;
    .locals 1

    .line 7
    const-class v0, Lcom/alipay/euler/andfix/AndFixVM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/euler/andfix/AndFixVM;

    return-object p0
.end method

.method public static values()[Lcom/alipay/euler/andfix/AndFixVM;
    .locals 1

    .line 7
    sget-object v0, Lcom/alipay/euler/andfix/AndFixVM;->$VALUES:[Lcom/alipay/euler/andfix/AndFixVM;

    invoke-virtual {v0}, [Lcom/alipay/euler/andfix/AndFixVM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/euler/andfix/AndFixVM;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AndFixVM{value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/euler/andfix/AndFixVM;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/euler/andfix/AndFixVM;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
