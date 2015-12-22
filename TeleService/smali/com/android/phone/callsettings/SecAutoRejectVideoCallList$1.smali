.class Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$1;
.super Landroid/os/Handler;
.source "SecAutoRejectVideoCallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;
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

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$1;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$1;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    # getter for: Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;
    invoke-static {v0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->access$000(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$1;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    # invokes: Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->stopContactQuery()V
    invoke-static {v0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->access$100(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)V

    :cond_0
    return-void
.end method
