.class Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader$1;
.super Ljava/lang/Object;
.source "CpuInfoReader.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;->a()Landroidx/collection/CircularIntArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Ljava/util/regex/Pattern;

.field final synthetic this$0:Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;

.field final synthetic val$intArray:Landroidx/collection/CircularIntArray;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;Landroidx/collection/CircularIntArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;

    .line 65
    iput-object p1, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader$1;->this$0:Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader$1;->val$intArray:Landroidx/collection/CircularIntArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string p2, "cpu(\\d+)"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader$1;->a:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader$1;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    .line 72
    .local v1, "matcher":Ljava/util/regex/Matcher;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, "id":I
    iget-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader$1;->val$intArray:Landroidx/collection/CircularIntArray;

    invoke-virtual {v2, v0}, Landroidx/collection/CircularIntArray;->addLast(I)V

    .line 77
    .end local v0    # "id":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
