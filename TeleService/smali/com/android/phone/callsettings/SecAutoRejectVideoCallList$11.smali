.class Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$11;
.super Ljava/lang/Object;
.source "SecAutoRejectVideoCallList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$11;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
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

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$11;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    # getter for: Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->access$400(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget v1, v1, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->checked:I

    if-eqz v1, :cond_1

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$11;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    # getter for: Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->access$400(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iput v0, v1, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->checked:I

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$11;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_videocall_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$11;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    # getter for: Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;
    invoke-static {v1}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->access$000(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->notifyDataSetInvalidated()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
