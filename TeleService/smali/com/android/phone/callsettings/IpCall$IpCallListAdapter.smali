.class public Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;
.super Landroid/widget/BaseAdapter;
.source "IpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/IpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IpCallListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private inflater:Landroid/view/LayoutInflater;

.field private ipCallList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/phone/callsettings/IpCall;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/IpCall;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .param p2    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->inflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->ipCallList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$3900(Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->ipCallList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    new-instance v2, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$ViewHolder;-><init>(Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;)V

    move-object v1, p2

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    # getter for: Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/IpCall;->access$1100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "inflate drawDeleteScreen(ip_call_list_item)"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040056

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :cond_0
    const v3, 0x7f100108

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v3, 0x7f100023

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$ViewHolder;->checkedView:Landroid/view/View;

    const v3, 0x7f100106

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$ViewHolder;->rootLayout:Landroid/widget/LinearLayout;

    iget-object v3, v2, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "zero_ipcall_settings_layout"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$ViewHolder;->rootLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$3;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$3;-><init>(Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mIsLongClick:Z
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$1700(Lcom/android/phone/callsettings/IpCall;)Z

    move-result v3

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mLongClickPos:I
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$1600(Lcom/android/phone/callsettings/IpCall;)I

    move-result v3

    if-eq v3, v6, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mLongClickPos:I
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->access$1600(Lcom/android/phone/callsettings/IpCall;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mLongClickPos:I
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$1600(Lcom/android/phone/callsettings/IpCall;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # setter for: Lcom/android/phone/callsettings/IpCall;->mEnableCheckedView:Z
    invoke-static {v3, v5}, Lcom/android/phone/callsettings/IpCall;->access$4002(Lcom/android/phone/callsettings/IpCall;Z)Z

    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    const/4 v4, 0x0

    # setter for: Lcom/android/phone/callsettings/IpCall;->mIsLongClick:Z
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/IpCall;->access$1702(Lcom/android/phone/callsettings/IpCall;Z)Z

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # setter for: Lcom/android/phone/callsettings/IpCall;->mLongClickPos:I
    invoke-static {v3, v6}, Lcom/android/phone/callsettings/IpCall;->access$1602(Lcom/android/phone/callsettings/IpCall;I)I

    :cond_2
    iget-object v3, v2, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$ViewHolder;->checkedView:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    check-cast v3, Landroid/widget/Checkable;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mEnableCheckedView:Z
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->access$4000(Lcom/android/phone/callsettings/IpCall;)Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_3
    return-object v1
.end method

.method private drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v6, 0x0

    move-object v2, p2

    new-instance v3, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$ViewHolder;-><init>(Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v4, v4, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v4, v4, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # invokes: Lcom/android/phone/callsettings/IpCall;->setListItemClick()V
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->access$3800(Lcom/android/phone/callsettings/IpCall;)V

    :cond_0
    if-eqz v1, :cond_5

    if-nez v2, :cond_1

    # getter for: Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/IpCall;->access$1100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "inflate drawNormalScreen(ip_call_number_item)"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04005a

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :cond_1
    const v4, 0x7f100118

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v4, 0x7f10010d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, v3, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const v4, 0x7f1000e1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$ViewHolder;->rootLayout:Landroid/widget/LinearLayout;

    iget-object v4, v3, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # invokes: Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->access$2200(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # invokes: Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->access$2200(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AUTO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    const v5, 0x7f0a0384

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, v3, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, v3, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_4
    iget-object v4, v3, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$ViewHolder;->rootLayout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;

    invoke-direct {v5, p0, v1, p1}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;-><init>(Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v3, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$ViewHolder;->rootLayout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;

    invoke-direct {v5, p0, v1, p1}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;-><init>(Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_5
    return-object v2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v1, 0x0

    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    # setter for: Lcom/android/phone/callsettings/IpCall;->mEnableCheckedView:Z
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/IpCall;->access$4002(Lcom/android/phone/callsettings/IpCall;Z)Z

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method
