.class public Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;
.super Landroid/widget/BaseAdapter;
.source "SecRejectCallWithMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/SecRejectCallWithMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RejectMessageAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private inflater:Landroid/view/LayoutInflater;

.field private rejectMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;Landroid/app/Activity;Ljava/util/ArrayList;)V
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

    iput-object p1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->inflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->rejectMsgList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->rejectMsgList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
    .locals 9
    .param p1    # I
    .param p2    # Landroid/view/View;

    const v8, 0x7f1001c5

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$ViewHolder;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;)V

    move-object v1, p2

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400a8

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :cond_0
    const v3, 0x7f1001b0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v3, 0x7f100107

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$ViewHolder;->rootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$ViewHolder;->deleteView:Landroid/view/View;

    iget-object v3, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$ViewHolder;->rootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$ViewHolder;->rootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$ViewHolder;->rootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setNextFocusRightId(I)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$ViewHolder;->rootLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$1;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$ViewHolder;->deleteView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$ViewHolder;->deleteView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$ViewHolder;->deleteView:Landroid/view/View;

    const v4, 0x7f1001af

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusLeftId(I)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$ViewHolder;->deleteView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$ViewHolder;->deleteView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$ViewHolder;->deleteView:Landroid/view/View;

    new-instance v4, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$ViewHolder;->deleteView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    :cond_1
    return-object v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->rejectMsgList:Ljava/util/ArrayList;

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
    .locals 5
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v1, 0x0

    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    # invokes: Lcom/android/phone/callsettings/SecRejectCallWithMsg;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->access$800(Lcom/android/phone/callsettings/SecRejectCallWithMsg;Ljava/lang/String;Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
