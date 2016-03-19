.class public Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AutoTextArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE_CODE:I = 0xac00

.field private static final FIRST:I = 0x24c


# instance fields
.field private final CHOSUNG_LIST:[Ljava/lang/String;

.field private LastFirstWord:Ljava/lang/String;

.field private mAutoTextSettings:Lcom/ime/implement/setting/AutoTextSettings;

.field private mContext:Landroid/content/Context;

.field private mHeaderIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTabletMode:Z

.field private mRepository:Lcom/ime/framework/repository/Repository;

.field private mSelectionMode:Z

.field private mSeletedUserTermIndex:I

.field private mUserWordArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
            ">;"
        }
    .end annotation
.end field

.field private mUserWordCheckList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/ime/implement/setting/AutoTextSettings;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
            ">;",
            "Lcom/ime/implement/setting/AutoTextSettings;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->LastFirstWord:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mSelectionMode:Z

    iput-boolean v3, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mIsTabletMode:Z

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u3131"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "\u3132"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u3134"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u3137"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u3138"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u3139"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u3141"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u3142"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u3143"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u3145"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u3146"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u3147"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u3148"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u3149"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u314a"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u314b"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u314c"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u314d"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u314e"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->CHOSUNG_LIST:[Ljava/lang/String;

    iput-object p3, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mUserWordArrayList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mUserWordCheckList:Ljava/util/List;

    iput-object p1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mRepository:Lcom/ime/framework/repository/Repository;

    iput v3, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mSeletedUserTermIndex:I

    iput-object p4, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mAutoTextSettings:Lcom/ime/implement/setting/AutoTextSettings;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mHeaderIndex:Ljava/util/List;

    iget-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mRepository:Lcom/ime/framework/repository/Repository;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "TABLET_MODE"

    invoke-interface {v0, v1, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mIsTabletMode:Z

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mSeletedUserTermIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mSelectionMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mUserWordCheckList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Lcom/ime/implement/setting/AutoTextSettings;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mAutoTextSettings:Lcom/ime/implement/setting/AutoTextSettings;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mUserWordArrayList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mIsTabletMode:Z

    return v0
.end method

.method private getInitialKorean(C)Ljava/lang/String;
    .locals 2

    const v1, 0xac00

    sub-int v0, p1, v1

    div-int/lit16 v0, v0, 0x24c

    iget-object v1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->CHOSUNG_LIST:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method


# virtual methods
.method public getCheckListSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordCheckList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderIndex()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mHeaderIndex:Ljava/util/List;

    return-object v0
.end method

.method public getSelectionMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mSelectionMode:Z

    return v0
.end method

.method public getSeletedUserTerm()Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;
    .locals 2

    invoke-virtual {p0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mSeletedUserTermIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    return-object v0
.end method

.method public getUserWordCheckList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mUserWordCheckList:Ljava/util/List;

    return-object v0
.end method

.method public getUserWordList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mUserWordArrayList:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    if-nez p2, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mContext:Landroid/content/Context;

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const v14, 0x7f030006

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getCount()I

    move-result v14

    move/from16 v0, p1

    if-lt v0, v14, :cond_1

    const/16 p2, 0x0

    :goto_0
    return-object p2

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    const v14, 0x7f100017

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v14, 0x7f100018

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v14, 0x7f100016

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    const v14, 0x7f100015

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v14

    invoke-virtual {v14}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v14

    invoke-virtual {v14}, Lcom/touchtype_fluency/Term;->getEncodings()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const v15, 0xac00

    if-lt v14, v15, :cond_2

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const v15, 0xd7a3

    if-gt v14, v15, :cond_2

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getInitialKorean(C)Ljava/lang/String;

    move-result-object v8

    :cond_2
    invoke-static {v11}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f100014

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mHeaderIndex:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move/from16 v0, p1

    if-le v14, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mHeaderIndex:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v14, 0x7f100019

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mHeaderIndex:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v15, p1, 0x1

    if-le v14, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mHeaderIndex:Ljava/util/List;

    add-int/lit8 v15, p1, 0x1

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_4

    const/16 v14, 0x8

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mSelectionMode:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/widget/CheckBox;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mUserWordCheckList:Ljava/util/List;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_5

    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->LastFirstWord:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setSelected(Z)V

    new-instance v14, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;-><init>(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;I)V

    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v14, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$2;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$2;-><init>(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;I)V

    invoke-virtual {v7, v14}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v14, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$3;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$3;-><init>(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;I)V

    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    :cond_3
    const/16 v14, 0x8

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v14, 0x8

    invoke-virtual {v7, v14}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_3
.end method

.method public setHeaderIndex()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mUserWordArrayList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mHeaderIndex:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    iget-object v7, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mUserWordArrayList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    invoke-virtual {v6}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v7

    invoke-virtual {v7}, Lcom/touchtype_fluency/Term;->getEncodings()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v7, 0xac00

    if-lt v2, v7, :cond_0

    const v7, 0xd7a3

    if-gt v2, v7, :cond_0

    invoke-direct {p0, v2}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getInitialKorean(C)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-eqz v0, :cond_1

    iget-object v7, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->LastFirstWord:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mHeaderIndex:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->LastFirstWord:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mHeaderIndex:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setSelectedUserTerm(I)V
    .locals 0

    iput p1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mSeletedUserTermIndex:I

    return-void
.end method

.method public setSelectionMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mUserWordCheckList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean p1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mSelectionMode:Z

    return-void
.end method
