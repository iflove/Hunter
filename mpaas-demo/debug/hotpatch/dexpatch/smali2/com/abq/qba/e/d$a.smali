.class public abstract Lcom/abq/qba/e/d$a;
.super Ljava/lang/Object;
.source "LibraryChunk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abq/qba/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/nio/ByteBuffer;I)Lcom/abq/qba/e/d$a;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 94
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 95
    .local v0, "packageId":I
    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Lcom/abq/qba/e/g;->a(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Lcom/abq/qba/e/e;

    invoke-direct {v2, v0, v1}, Lcom/abq/qba/e/e;-><init>(ILjava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public final c()[B
    .locals 3

    .line 106
    const/16 v0, 0x104

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 107
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    move-object v1, v0

    invoke-virtual {p0}, Lcom/abq/qba/e/d$a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 108
    invoke-virtual {p0}, Lcom/abq/qba/e/d$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/abq/qba/e/g;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
