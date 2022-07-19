.class Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;
.super Ljava/lang/Object;
.source "FileUtil.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/utils/FileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyFilenameFilter"
.end annotation


# instance fields
.field allAccept:Z

.field final excludePrefixes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final excludes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .param p1, "_excludes"    # Ljava/util/Set;
    .param p2, "_excludePrefixes"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;->allAccept:Z

    .line 278
    iput-object p1, p0, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;->excludes:Ljava/util/Set;

    .line 279
    iput-object p2, p0, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;->excludePrefixes:Ljava/util/Set;

    .line 280
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .line 284
    const/4 v0, 0x1

    .line 285
    .local v0, "accept":Z
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;->excludes:Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    const/4 v0, 0x0

    goto :goto_1

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;->excludePrefixes:Ljava/util/Set;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 289
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;->excludePrefixes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 290
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    const/4 v0, 0x0

    .line 292
    goto :goto_1

    .line 294
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 297
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;->allAccept:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;->allAccept:Z

    .line 298
    return v0
.end method

.method public allAccept()Z
    .locals 1

    .line 302
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;->allAccept:Z

    return v0
.end method
