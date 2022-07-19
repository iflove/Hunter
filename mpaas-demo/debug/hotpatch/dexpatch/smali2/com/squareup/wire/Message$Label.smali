.class public final enum Lcom/squareup/wire/Message$Label;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Label"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/wire/Message$Label;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/wire/Message$Label;

.field public static final enum OPTIONAL:Lcom/squareup/wire/Message$Label;

.field public static final ORDER_BY_NAME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/squareup/wire/Message$Label;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PACKED:Lcom/squareup/wire/Message$Label;

.field public static final enum REPEATED:Lcom/squareup/wire/Message$Label;

.field public static final enum REQUIRED:Lcom/squareup/wire/Message$Label;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 123
    new-instance v0, Lcom/squareup/wire/Message$Label;

    const-string v1, "REQUIRED"

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/wire/Message$Label;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;

    new-instance v1, Lcom/squareup/wire/Message$Label;

    const-string v3, "OPTIONAL"

    const/4 v4, 0x1

    const/16 v5, 0x40

    invoke-direct {v1, v3, v4, v5}, Lcom/squareup/wire/Message$Label;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/squareup/wire/Message$Label;->OPTIONAL:Lcom/squareup/wire/Message$Label;

    new-instance v3, Lcom/squareup/wire/Message$Label;

    const-string v5, "REPEATED"

    const/4 v6, 0x2

    const/16 v7, 0x80

    invoke-direct {v3, v5, v6, v7}, Lcom/squareup/wire/Message$Label;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;

    new-instance v5, Lcom/squareup/wire/Message$Label;

    const-string v7, "PACKED"

    const/4 v8, 0x3

    const/16 v9, 0x100

    invoke-direct {v5, v7, v8, v9}, Lcom/squareup/wire/Message$Label;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/squareup/wire/Message$Label;->PACKED:Lcom/squareup/wire/Message$Label;

    .line 122
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/squareup/wire/Message$Label;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/squareup/wire/Message$Label;->$VALUES:[Lcom/squareup/wire/Message$Label;

    .line 125
    new-instance v0, Lcom/squareup/wire/Message$Label$1;

    invoke-direct {v0}, Lcom/squareup/wire/Message$Label$1;-><init>()V

    sput-object v0, Lcom/squareup/wire/Message$Label;->ORDER_BY_NAME:Ljava/util/Comparator;

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

    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    iput p3, p0, Lcom/squareup/wire/Message$Label;->value:I

    .line 136
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/wire/Message$Label;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 122
    const-class v0, Lcom/squareup/wire/Message$Label;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Label;

    return-object v0
.end method

.method public static values()[Lcom/squareup/wire/Message$Label;
    .locals 1

    .line 122
    sget-object v0, Lcom/squareup/wire/Message$Label;->$VALUES:[Lcom/squareup/wire/Message$Label;

    invoke-virtual {v0}, [Lcom/squareup/wire/Message$Label;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/wire/Message$Label;

    return-object v0
.end method


# virtual methods
.method public isPacked()Z
    .locals 1

    .line 147
    sget-object v0, Lcom/squareup/wire/Message$Label;->PACKED:Lcom/squareup/wire/Message$Label;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRepeated()Z
    .locals 1

    .line 143
    sget-object v0, Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/squareup/wire/Message$Label;->PACKED:Lcom/squareup/wire/Message$Label;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public value()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/squareup/wire/Message$Label;->value:I

    return v0
.end method
