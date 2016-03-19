.class Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$2;
.super Ljava/lang/Object;
.source "SecAutoRejectVideoCallList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->drawUnknownItem(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

.field final synthetic val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$2;->this$1:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "SecAutoRejectVideoCallList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "textlayout onClick ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget v5, v5, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->checked:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget v1, v1, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->checked:I

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, v4, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->checked:I

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$2;->this$1:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    # getter for: Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->access$1200(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f100029

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget v1, v1, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->checked:I

    if-eqz v1, :cond_2

    :goto_1
    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->id:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$2;->this$1:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_videocall_mode"

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget v3, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->checked:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1
.end method
