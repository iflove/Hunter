.class public final enum Lcom/abq/qba/e/k$a;
.super Ljava/lang/Enum;
.source "ResourceString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abq/qba/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/abq/qba/e/k$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/abq/qba/e/k$a;

.field public static final enum b:Lcom/abq/qba/e/k$a;

.field private static final synthetic d:[Lcom/abq/qba/e/k$a;


# instance fields
.field private final c:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Lcom/abq/qba/e/k$a;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "UTF8"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/abq/qba/e/k$a;-><init>(Ljava/lang/String;ILjava/nio/charset/Charset;)V

    sput-object v0, Lcom/abq/qba/e/k$a;->a:Lcom/abq/qba/e/k$a;

    .line 36
    new-instance v1, Lcom/abq/qba/e/k$a;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    const-string v4, "UTF16"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/abq/qba/e/k$a;-><init>(Ljava/lang/String;ILjava/nio/charset/Charset;)V

    sput-object v1, Lcom/abq/qba/e/k$a;->b:Lcom/abq/qba/e/k$a;

    .line 34
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/abq/qba/e/k$a;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lcom/abq/qba/e/k$a;->d:[Lcom/abq/qba/e/k$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/nio/charset/Charset;)V
    .locals 0
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/abq/qba/e/k$a;->c:Ljava/nio/charset/Charset;

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/abq/qba/e/k$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lcom/abq/qba/e/k$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/abq/qba/e/k$a;

    return-object v0
.end method

.method public static values()[Lcom/abq/qba/e/k$a;
    .locals 1

    .line 34
    sget-object v0, Lcom/abq/qba/e/k$a;->d:[Lcom/abq/qba/e/k$a;

    invoke-virtual {v0}, [Lcom/abq/qba/e/k$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/abq/qba/e/k$a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/nio/charset/Charset;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/abq/qba/e/k$a;->c:Ljava/nio/charset/Charset;

    return-object v0
.end method
