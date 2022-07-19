.class public Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;
.super Ljava/lang/Object;
.source "PatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/utils/PatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PatternData"
.end annotation


# instance fields
.field mNotEqualPatterns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNotPrefixPatterns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPrefixPatterns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mPrefixPatterns:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mNotEqualPatterns:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mNotPrefixPatterns:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addNotEqualPattern(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mNotEqualPatterns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mNotEqualPatterns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mNotEqualPatterns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 101
    return-void

    .line 98
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mNotEqualPatterns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public addNotPrefixPattern(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mNotPrefixPatterns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mNotPrefixPatterns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mNotPrefixPatterns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 116
    return-void

    .line 113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mNotPrefixPatterns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public addPattern(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "patternType"    # I

    .line 63
    if-nez p2, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->addPrefixPattern(Ljava/lang/String;)V

    return-void

    .line 65
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 66
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->addNotEqualPattern(Ljava/lang/String;)V

    return-void

    .line 67
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 68
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->addNotPrefixPattern(Ljava/lang/String;)V

    .line 70
    :cond_2
    return-void
.end method

.method public addPrefixPattern(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mPrefixPatterns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mPrefixPatterns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 80
    if-lez v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mPrefixPatterns:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mPrefixPatterns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 86
    return-void

    .line 78
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mPrefixPatterns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method pattern(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "ret":Z
    const/4 v1, 0x0

    .line 132
    .local v1, "begin":I
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mPrefixPatterns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 134
    .local v2, "end":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 135
    add-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    .line 136
    .local v3, "middle":I
    iget-object v4, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mPrefixPatterns:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 137
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_0

    .line 138
    move v2, v3

    .line 139
    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 142
    const/4 v0, 0x1

    .line 143
    goto :goto_1

    .line 145
    :cond_1
    add-int/lit8 v1, v3, 0x1

    .line 146
    .end local v4    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 148
    .end local v3    # "middle":I
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 149
    const/4 v1, 0x0

    .line 150
    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mNotPrefixPatterns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 151
    :goto_2
    if-ge v1, v2, :cond_5

    .line 152
    add-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    .line 153
    .restart local v3    # "middle":I
    iget-object v4, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mNotPrefixPatterns:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 154
    .restart local v4    # "prefix":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_3

    .line 155
    move v2, v3

    .line 156
    goto :goto_2

    .line 158
    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 159
    const/4 v0, 0x0

    .line 160
    goto :goto_3

    .line 162
    :cond_4
    add-int/lit8 v1, v3, 0x1

    .line 163
    .end local v4    # "prefix":Ljava/lang/String;
    goto :goto_2

    .line 166
    .end local v3    # "middle":I
    :cond_5
    :goto_3
    if-eqz v0, :cond_8

    .line 167
    const/4 v1, 0x0

    .line 168
    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mNotEqualPatterns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 169
    :goto_4
    if-ge v1, v2, :cond_8

    .line 170
    add-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    .line 171
    .restart local v3    # "middle":I
    iget-object v4, p0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->mNotEqualPatterns:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 172
    .restart local v4    # "prefix":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_6

    .line 173
    move v2, v3

    .line 174
    goto :goto_4

    .line 176
    :cond_6
    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_7

    .line 177
    add-int/lit8 v1, v3, 0x1

    .line 178
    goto :goto_4

    .line 180
    :cond_7
    const/4 v0, 0x0

    .line 184
    .end local v3    # "middle":I
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_8
    return v0
.end method
