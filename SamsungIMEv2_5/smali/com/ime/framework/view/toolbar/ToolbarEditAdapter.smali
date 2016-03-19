.class public Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;
.super Landroid/widget/BaseAdapter;
.source "ToolbarEditAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$ElementsContainer;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflate:Landroid/view/LayoutInflater;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mShowingItems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mToolbarMgr:Lcom/ime/framework/view/toolbar/ToolBarManager;

.field private mUnCheckedItems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mInflate:Landroid/view/LayoutInflater;

    :goto_0
    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarManager;->getInstance()Lcom/ime/framework/view/toolbar/ToolBarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mToolbarMgr:Lcom/ime/framework/view/toolbar/ToolBarManager;

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mToolbarMgr:Lcom/ime/framework/view/toolbar/ToolBarManager;

    invoke-virtual {v0}, Lcom/ime/framework/view/toolbar/ToolBarManager;->getToolbarEditItems()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mShowingItems:Ljava/util/Vector;

    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarManager;->getToolbarEditUnChecked()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mUnCheckedItems:Ljava/util/Vector;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mInflate:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mShowingItems:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mUnCheckedItems:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;)Lcom/ime/framework/view/toolbar/ToolBarManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mToolbarMgr:Lcom/ime/framework/view/toolbar/ToolBarManager;

    return-object v0
.end method

.method private getOnCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$2;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$2;-><init>(Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;)V

    return-object v0
.end method

.method private getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$1;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$1;-><init>(Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;)V

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mShowingItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    new-instance v2, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$ElementsContainer;

    const/4 v12, 0x0

    invoke-direct {v2, v12}, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$ElementsContainer;-><init>(Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$1;)V

    if-nez p2, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mInflate:Landroid/view/LayoutInflater;

    const v13, 0x7f03009a

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    const v12, 0x7f1000f7

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v2, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$ElementsContainer;->text:Landroid/widget/TextView;

    iget-object v12, v2, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$ElementsContainer;->text:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setClickable(Z)V

    const v12, 0x7f1000f8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    iput-object v12, v2, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$ElementsContainer;->checkbox:Landroid/widget/CheckBox;

    iget-object v12, v2, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$ElementsContainer;->checkbox:Landroid/widget/CheckBox;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v12, v2, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$ElementsContainer;->checkbox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->getOnCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v12, v2, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$ElementsContainer;->text:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b008b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mToolbarMgr:Lcom/ime/framework/view/toolbar/ToolBarManager;

    invoke-virtual {v12}, Lcom/ime/framework/view/toolbar/ToolBarManager;->getToolBarIconsResArray()[[I

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mToolbarMgr:Lcom/ime/framework/view/toolbar/ToolBarManager;

    invoke-virtual {v12}, Lcom/ime/framework/view/toolbar/ToolBarManager;->getToolBarLabels()[[I

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mShowingItems:Ljava/util/Vector;

    sget v11, Lcom/ime/framework/view/toolbar/ToolBarManager;->TOOLBAR_ORDER_LENGTH:I

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v3, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v11, :cond_0

    aget-object v12, v5, v3

    const/4 v13, 0x0

    aget v8, v12, v13

    if-ne v8, v6, :cond_4

    iget-object v12, v2, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$ElementsContainer;->text:Landroid/widget/TextView;

    aget-object v13, v5, v3

    const/4 v14, 0x1

    aget v13, v13, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f090785

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v4, v12

    iget-object v12, v2, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$ElementsContainer;->text:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_0
    const/4 v3, 0x0

    :goto_2
    array-length v12, v10

    if-ge v3, v12, :cond_1

    aget-object v12, v10, v3

    const/4 v13, 0x0

    aget v8, v12, v13

    if-ne v8, v6, :cond_5

    iget-object v12, v2, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$ElementsContainer;->text:Landroid/widget/TextView;

    aget-object v13, v10, v3

    const/4 v14, 0x1

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v12, v2, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$ElementsContainer;->text:Landroid/widget/TextView;

    const/16 v13, 0x10

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mUnCheckedItems:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    if-ge v3, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mUnCheckedItems:Ljava/util/Vector;

    invoke-virtual {v12, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v6, v12, :cond_6

    const/4 v1, 0x0

    :cond_2
    iget-object v12, v2, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$ElementsContainer;->checkbox:Landroid/widget/CheckBox;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v12, v2, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$ElementsContainer;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v12, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object p2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$ElementsContainer;

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method
