.class final Lcom/alipay/mobile/common/patch/dir/Flater$1;
.super Ljava/lang/Object;
.source "Flater.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/patch/dir/Flater;->packFolderToFile(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 59
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/patch/dir/Flater$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/String;
    .param p2, "o2"    # Ljava/lang/String;

    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
