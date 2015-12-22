.class Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$3;
.super Ljava/lang/Object;
.source "SecAutoRejectVideoCallList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
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

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->deleteAutoRejectNumber(I)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->access$1300(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    # invokes: Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->makeScreen()V
    invoke-static {v0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->access$1400(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)V

    return-void
.end method
