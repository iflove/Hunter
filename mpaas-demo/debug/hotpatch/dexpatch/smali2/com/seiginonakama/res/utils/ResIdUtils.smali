.class public Lcom/seiginonakama/res/utils/ResIdUtils;
.super Ljava/lang/Object;
.source "ResIdUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;
    }
.end annotation


# static fields
.field private static final TYPE_ALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 48
    sput-object v0, Lcom/seiginonakama/res/utils/ResIdUtils;->TYPE_ALL:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/abq/qba/e/m;Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/abq/qba/e/m;
    .param p1, "x1"    # Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;

    .line 35
    invoke-static {p0, p1}, Lcom/seiginonakama/res/utils/ResIdUtils;->modifyResourceValueIfRef(Lcom/abq/qba/e/m;Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;)V

    return-void
.end method

.method static synthetic access$100(Lcom/abq/qba/e/a;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/abq/qba/e/a;
    .param p1, "x1"    # Lcom/seiginonakama/res/utils/VisitUtils$Visitor;
    .param p2, "x2"    # Lcom/seiginonakama/res/utils/VisitUtils$Visitor;

    .line 35
    invoke-static {p0, p1, p2}, Lcom/seiginonakama/res/utils/ResIdUtils;->visitResourceValueInXml(Lcom/abq/qba/e/a;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V

    return-void
.end method

.method public static getPackageId(I)I
    .locals 1
    .param p0, "resId"    # I

    .line 161
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public static makeResId(III)I
    .locals 3
    .param p0, "pkgId"    # I
    .param p1, "typeId"    # I
    .param p2, "entryId"    # I

    .line 148
    if-ltz p0, :cond_2

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_2

    .line 151
    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    .line 154
    if-ltz p2, :cond_0

    const v0, 0xffff

    if-gt p2, v0, :cond_0

    .line 157
    shl-int/lit8 v0, p0, 0x18

    or-int/lit8 v0, v0, 0x0

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    or-int/2addr v0, p2

    return v0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "entryId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " over range-[0, 65535]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "typeId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " over range-[1, 255]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "packageId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " over range-[0, 127]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static modifyRefResourceId(Lcom/abq/qba/e/r$a;Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;)V
    .locals 7
    .param p0, "entry"    # Lcom/abq/qba/e/r$a;
    .param p1, "modifier"    # Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;

    .line 122
    invoke-virtual {p0}, Lcom/abq/qba/e/r$a;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/abq/qba/e/r$a;->f()I

    move-result v0

    const/4 v2, 0x2

    invoke-interface {p1, v0, v2}, Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;->onModify(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/abq/qba/e/r$a;->b(I)V

    .line 125
    invoke-virtual {p0}, Lcom/abq/qba/e/r$a;->e()Ljava/util/Map;

    move-result-object v0

    .line 126
    .local v0, "bagKeyValueMap":Ljava/util/Map;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v2, "modified":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 128
    .local v4, "bagKey":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/abq/qba/e/m;

    .line 129
    .local v1, "resourceValue":Lcom/abq/qba/e/m;
    move-object v1, v5

    invoke-static {v5, p1}, Lcom/seiginonakama/res/utils/ResIdUtils;->modifyResourceValueIfRef(Lcom/abq/qba/e/m;Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;)V

    .line 130
    const/4 v5, 0x1

    invoke-interface {p1, v4, v5}, Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;->onModify(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .end local v1    # "resourceValue":Lcom/abq/qba/e/m;
    .end local v4    # "bagKey":I
    goto :goto_0

    .line 134
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 135
    .local v3, "keySorted":Ljava/util/List;
    move-object v3, v1

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 136
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 137
    .local v1, "sortedValues":Ljava/util/LinkedHashMap;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 138
    .local v5, "key":Ljava/lang/Integer;
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .end local v5    # "key":Ljava/lang/Integer;
    goto :goto_1

    .line 140
    :cond_1
    invoke-virtual {p0, v1}, Lcom/abq/qba/e/r$a;->a(Ljava/util/Map;)V

    .line 141
    .end local v0    # "bagKeyValueMap":Ljava/util/Map;
    .end local v1    # "sortedValues":Ljava/util/LinkedHashMap;
    .end local v2    # "modified":Ljava/util/Map;
    .end local v3    # "keySorted":Ljava/util/List;
    return-void

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/abq/qba/e/r$a;->d()Lcom/abq/qba/e/m;

    move-result-object v0

    .line 143
    .local v1, "resourceValue":Lcom/abq/qba/e/m;
    invoke-static {v0, p1}, Lcom/seiginonakama/res/utils/ResIdUtils;->modifyResourceValueIfRef(Lcom/abq/qba/e/m;Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;)V

    .line 145
    .end local v1    # "resourceValue":Lcom/abq/qba/e/m;
    return-void
.end method

.method public static modifyRefResourceId(Ljava/io/File;Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;)V
    .locals 1
    .param p0, "appDir"    # Ljava/io/File;
    .param p1, "modifier"    # Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;

    .line 56
    sget-object v0, Lcom/seiginonakama/res/utils/ResIdUtils;->TYPE_ALL:Ljava/util/Set;

    invoke-static {p0, p1, v0}, Lcom/seiginonakama/res/utils/ResIdUtils;->modifyRefResourceId(Ljava/io/File;Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;Ljava/util/Set;)V

    .line 57
    return-void
.end method

.method public static modifyRefResourceId(Ljava/io/File;Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;Ljava/util/Set;)V
    .locals 1
    .param p0, "appDir"    # Ljava/io/File;
    .param p1, "modifier"    # Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;
    .param p2, "types"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/seiginonakama/res/utils/ResIdUtils;->modifyRefResourceId(Ljava/io/File;Ljava/io/File;Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;Ljava/util/Set;)V

    .line 61
    return-void
.end method

.method public static modifyRefResourceId(Ljava/io/File;Ljava/io/File;Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;)V
    .locals 1
    .param p0, "appDir"    # Ljava/io/File;
    .param p1, "resDir"    # Ljava/io/File;
    .param p2, "modifier"    # Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;

    .line 64
    sget-object v0, Lcom/seiginonakama/res/utils/ResIdUtils;->TYPE_ALL:Ljava/util/Set;

    invoke-static {p0, p1, p2, v0}, Lcom/seiginonakama/res/utils/ResIdUtils;->modifyRefResourceId(Ljava/io/File;Ljava/io/File;Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;Ljava/util/Set;)V

    .line 65
    return-void
.end method

.method public static modifyRefResourceId(Ljava/io/File;Ljava/io/File;Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;Ljava/util/Set;)V
    .locals 8
    .param p0, "appDir"    # Ljava/io/File;
    .param p1, "resDir"    # Ljava/io/File;
    .param p2, "modifier"    # Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;
    .param p3, "types"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 80
    nop

    .line 82
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/seiginonakama/res/utils/ResIdUtils$1;

    invoke-direct {v0, p2}, Lcom/seiginonakama/res/utils/ResIdUtils$1;-><init>(Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;)V

    move-object v4, v0

    :goto_1
    const/4 v0, 0x3

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/seiginonakama/res/utils/ResIdUtils$2;

    invoke-direct {v0, p2}, Lcom/seiginonakama/res/utils/ResIdUtils$2;-><init>(Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;)V

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, v1

    :goto_2
    const/4 v0, 0x4

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/seiginonakama/res/utils/ResIdUtils$3;

    invoke-direct {v0, p2}, Lcom/seiginonakama/res/utils/ResIdUtils$3;-><init>(Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;)V

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, v1

    :goto_3
    const/4 v0, 0x5

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/seiginonakama/res/utils/ResIdUtils$4;

    invoke-direct {v1, p2}, Lcom/seiginonakama/res/utils/ResIdUtils$4;-><init>(Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;)V

    :cond_4
    move-object v7, v1

    .line 80
    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/seiginonakama/res/utils/ResIdUtils;->modifyResources(Ljava/io/File;Ljava/io/File;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V

    .line 119
    return-void
.end method

.method private static modifyResourceValueIfRef(Lcom/abq/qba/e/m;Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;)V
    .locals 3
    .param p0, "resourceValue"    # Lcom/abq/qba/e/m;
    .param p1, "modifier"    # Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;

    .line 165
    if-eqz p0, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/abq/qba/e/m;->b()Lcom/abq/qba/e/m$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 168
    .local v1, "type":Lcom/abq/qba/e/m$a;
    move-object v1, v0

    sget-object v2, Lcom/abq/qba/e/m$a;->b:Lcom/abq/qba/e/m$a;

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/abq/qba/e/m$a;->c:Lcom/abq/qba/e/m$a;

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/abq/qba/e/m$a;->h:Lcom/abq/qba/e/m$a;

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/abq/qba/e/m$a;->i:Lcom/abq/qba/e/m$a;

    if-ne v1, v0, :cond_1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/abq/qba/e/m;->c()I

    move-result v0

    const/4 v2, 0x3

    invoke-interface {p1, v0, v2}, Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;->onModify(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/abq/qba/e/m;->a(I)V

    .line 174
    .end local v1    # "type":Lcom/abq/qba/e/m$a;
    :cond_1
    return-void
.end method

.method private static modifyResources(Ljava/io/File;Ljava/io/File;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V
    .locals 9
    .param p0, "appDir"    # Ljava/io/File;
    .param p1, "resDir"    # Ljava/io/File;
    .param p2, "entryVisitor"    # Lcom/seiginonakama/res/utils/VisitUtils$Visitor;
    .param p3, "arscResourceValueVisitor"    # Lcom/seiginonakama/res/utils/VisitUtils$Visitor;
    .param p4, "xmlResourceValueVisitor"    # Lcom/seiginonakama/res/utils/VisitUtils$Visitor;
    .param p5, "resourceMapChunkVisitor"    # Lcom/seiginonakama/res/utils/VisitUtils$Visitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Lcom/seiginonakama/res/utils/VisitUtils$Visitor<",
            "Lcom/abq/qba/e/r$a;",
            ">;",
            "Lcom/seiginonakama/res/utils/VisitUtils$Visitor<",
            "Lcom/abq/qba/e/m;",
            ">;",
            "Lcom/seiginonakama/res/utils/VisitUtils$Visitor<",
            "Lcom/abq/qba/e/m;",
            ">;",
            "Lcom/seiginonakama/res/utils/VisitUtils$Visitor<",
            "Lcom/abq/qba/e/ad;",
            ">;)V"
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    new-instance v7, Ljava/io/File;

    const-string v0, "AndroidManifest.xml"

    invoke-direct {v7, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    .local v7, "manifest":Ljava/io/File;
    if-eqz p1, :cond_0

    move-object v8, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "res"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v8, v0

    .line 187
    .local v8, "res":Ljava/io/File;
    :goto_0
    new-instance v2, Ljava/io/File;

    const-string v0, "resources.arsc"

    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    .local v2, "arsc":Ljava/io/File;
    new-instance v0, Lcom/seiginonakama/res/utils/ResIdUtils$5;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/seiginonakama/res/utils/ResIdUtils$5;-><init>(Ljava/io/File;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Ljava/io/File;Ljava/io/File;)V

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/seiginonakama/res/utils/FileUtils;->iterate(Ljava/io/File;Lcom/seiginonakama/res/utils/Callback;Z)V

    .line 245
    return-void

    .line 183
    .end local v2    # "arsc":Ljava/io/File;
    .end local v7    # "manifest":Ljava/io/File;
    .end local v8    # "res":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appDir("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") is not a dir or it not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static visitResourceValueInXml(Lcom/abq/qba/e/a;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V
    .locals 4
    .param p0, "chunk"    # Lcom/abq/qba/e/a;
    .param p1, "resourceValueVisitor"    # Lcom/seiginonakama/res/utils/VisitUtils$Visitor;
    .param p2, "resourceMapChunkVisitor"    # Lcom/seiginonakama/res/utils/VisitUtils$Visitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/abq/qba/e/a;",
            "Lcom/seiginonakama/res/utils/VisitUtils$Visitor<",
            "Lcom/abq/qba/e/m;",
            ">;",
            "Lcom/seiginonakama/res/utils/VisitUtils$Visitor<",
            "Lcom/abq/qba/e/ad;",
            ">;)V"
        }
    .end annotation

    .line 250
    instance-of v0, p0, Lcom/abq/qba/e/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 251
    move-object v0, p0

    check-cast v0, Lcom/abq/qba/e/b;

    invoke-virtual {v0}, Lcom/abq/qba/e/b;->f()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/abq/qba/e/a;

    .line 252
    .local v1, "child":Lcom/abq/qba/e/a;
    invoke-static {v2, p1, p2}, Lcom/seiginonakama/res/utils/ResIdUtils;->visitResourceValueInXml(Lcom/abq/qba/e/a;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V

    .line 253
    .end local v1    # "child":Lcom/abq/qba/e/a;
    goto :goto_0

    :cond_0
    return-void

    .line 254
    :cond_1
    instance-of v0, p0, Lcom/abq/qba/e/ae;

    if-eqz v0, :cond_3

    .line 255
    if-eqz p1, :cond_4

    .line 256
    move-object v0, p0

    check-cast v0, Lcom/abq/qba/e/ae;

    invoke-virtual {v0}, Lcom/abq/qba/e/ae;->j()Ljava/util/List;

    move-result-object v0

    .line 257
    .local v1, "attributes":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/abq/qba/e/u;

    .line 258
    .local v2, "attr":Lcom/abq/qba/e/u;
    invoke-virtual {v2}, Lcom/abq/qba/e/u;->d()Lcom/abq/qba/e/m;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/seiginonakama/res/utils/VisitUtils$Visitor;->onVisit(Ljava/lang/Object;)V

    .line 259
    .end local v2    # "attr":Lcom/abq/qba/e/u;
    goto :goto_1

    .line 260
    .end local v1    # "attributes":Ljava/util/List;
    :cond_2
    return-void

    .line 261
    :cond_3
    instance-of v0, p0, Lcom/abq/qba/e/ad;

    if-eqz v0, :cond_4

    .line 262
    if-eqz p2, :cond_4

    .line 263
    move-object v0, p0

    check-cast v0, Lcom/abq/qba/e/ad;

    invoke-interface {p2, v0}, Lcom/seiginonakama/res/utils/VisitUtils$Visitor;->onVisit(Ljava/lang/Object;)V

    .line 266
    :cond_4
    return-void
.end method
