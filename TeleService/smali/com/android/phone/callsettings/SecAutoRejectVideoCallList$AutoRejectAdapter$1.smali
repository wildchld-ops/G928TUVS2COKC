.class Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;
.super Ljava/lang/Object;
.source "SecAutoRejectVideoCallList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;->this$1:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;->this$1:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawUnknownItem, setOnCheckedChangeListener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", item.checked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget v5, v5, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->checked:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->access$1100(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget v3, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->checked:I

    if-ne v0, v3, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget v4, v4, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->checked:I

    if-lez v4, :cond_3

    :goto_2
    iput v2, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->checked:I

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->id:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;->this$1:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_videocall_mode"

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget v3, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->checked:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method
