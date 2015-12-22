.class Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter$2;
.super Ljava/lang/Object;
.source "WifiCallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter$2;->this$1:Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;

    iput p2, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter$2;->this$1:Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->this$0:Lcom/android/phone/callsettings/WifiCallActivity;

    # getter for: Lcom/android/phone/callsettings/WifiCallActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/phone/callsettings/WifiCallActivity;->access$200(Lcom/android/phone/callsettings/WifiCallActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget v3, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter$2;->val$position:I

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter$2;->this$1:Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->this$0:Lcom/android/phone/callsettings/WifiCallActivity;

    # getter for: Lcom/android/phone/callsettings/WifiCallActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/phone/callsettings/WifiCallActivity;->access$200(Lcom/android/phone/callsettings/WifiCallActivity;)Landroid/widget/ListView;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter$2;->val$position:I

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v4, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const-string v1, "WifiCallActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter$2;->val$position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", checked ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter$2;->this$1:Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->this$0:Lcom/android/phone/callsettings/WifiCallActivity;

    iget-object v2, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter$2;->this$1:Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;

    # getter for: Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->CallType:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->access$300(Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter$2;->val$position:I

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # invokes: Lcom/android/phone/callsettings/WifiCallActivity;->setWiFiPrefValue(I)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/WifiCallActivity;->access$400(Lcom/android/phone/callsettings/WifiCallActivity;I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter$2;->this$1:Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->this$0:Lcom/android/phone/callsettings/WifiCallActivity;

    # getter for: Lcom/android/phone/callsettings/WifiCallActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/phone/callsettings/WifiCallActivity;->access$200(Lcom/android/phone/callsettings/WifiCallActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter$2;->this$1:Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->this$0:Lcom/android/phone/callsettings/WifiCallActivity;

    # getter for: Lcom/android/phone/callsettings/WifiCallActivity;->mWifiCallAdapter:Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;
    invoke-static {v2}, Lcom/android/phone/callsettings/WifiCallActivity;->access$500(Lcom/android/phone/callsettings/WifiCallActivity;)Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
