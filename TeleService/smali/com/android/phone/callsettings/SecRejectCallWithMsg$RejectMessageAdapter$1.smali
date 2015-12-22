.class Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$1;
.super Ljava/lang/Object;
.source "SecRejectCallWithMsg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$1;->this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    iput p2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$1;->this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    iget v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->goToEditRejectMsgScreen(I)V

    return-void
.end method
