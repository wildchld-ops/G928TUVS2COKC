.class Lcom/android/phone/callsettings/SecAutoRejectList$15;
.super Ljava/lang/Object;
.source "SecAutoRejectList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecAutoRejectList;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$15;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p3, :cond_0

    const-string v1, "dcm_auto_reject_conditions"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$15;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    # getter for: Lcom/android/phone/callsettings/SecAutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->access$400(Lcom/android/phone/callsettings/SecAutoRejectList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget v1, v1, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->checked:I

    if-eqz v1, :cond_1

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$15;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    # getter for: Lcom/android/phone/callsettings/SecAutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->access$400(Lcom/android/phone/callsettings/SecAutoRejectList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iput v0, v1, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->checked:I

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$15;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$15;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    # getter for: Lcom/android/phone/callsettings/SecAutoRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;
    invoke-static {v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->access$000(Lcom/android/phone/callsettings/SecAutoRejectList;)Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->notifyDataSetInvalidated()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
