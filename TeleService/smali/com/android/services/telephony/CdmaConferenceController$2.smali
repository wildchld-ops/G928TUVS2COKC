.class Lcom/android/services/telephony/CdmaConferenceController$2;
.super Ljava/lang/Object;
.source "CdmaConferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/CdmaConferenceController;->add(Lcom/android/services/telephony/CdmaConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/CdmaConferenceController;

.field final synthetic val$connection:Lcom/android/services/telephony/CdmaConnection;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/CdmaConferenceController;Lcom/android/services/telephony/CdmaConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/CdmaConferenceController$2;->this$0:Lcom/android/services/telephony/CdmaConferenceController;

    iput-object p2, p0, Lcom/android/services/telephony/CdmaConferenceController$2;->val$connection:Lcom/android/services/telephony/CdmaConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/CdmaConferenceController$2;->val$connection:Lcom/android/services/telephony/CdmaConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/CdmaConnection;->forceAsDialing(Z)V

    iget-object v0, p0, Lcom/android/services/telephony/CdmaConferenceController$2;->this$0:Lcom/android/services/telephony/CdmaConferenceController;

    iget-object v1, p0, Lcom/android/services/telephony/CdmaConferenceController$2;->val$connection:Lcom/android/services/telephony/CdmaConnection;

    # invokes: Lcom/android/services/telephony/CdmaConferenceController;->addInternal(Lcom/android/services/telephony/CdmaConnection;)V
    invoke-static {v0, v1}, Lcom/android/services/telephony/CdmaConferenceController;->access$200(Lcom/android/services/telephony/CdmaConferenceController;Lcom/android/services/telephony/CdmaConnection;)V

    return-void
.end method
