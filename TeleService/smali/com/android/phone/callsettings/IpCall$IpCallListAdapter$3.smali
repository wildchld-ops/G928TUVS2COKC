.class Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$3;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iput p2, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    # getter for: Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/IpCall;->access$1100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onclick delete screen"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$3;->val$position:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v2, v1, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$3;->val$position:I

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
