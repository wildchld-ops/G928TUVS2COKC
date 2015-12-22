.class Lcom/android/phone/ims/IMSConferenceCallActivity$2;
.super Landroid/content/AsyncQueryHandler;
.source "IMSConferenceCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ims/IMSConferenceCallActivity;->InitiateConfCallUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/ims/IMSConferenceCallActivity;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$2;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$2;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    const-string v1, "onQueryComplete"

    # invokes: Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$200(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$2;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # invokes: Lcom/android/phone/ims/IMSConferenceCallActivity;->createCursorAdapter(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$300(Lcom/android/phone/ims/IMSConferenceCallActivity;Landroid/database/Cursor;)V

    return-void
.end method
