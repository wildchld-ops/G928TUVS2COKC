.class public Lcom/android/server/telecom/PhoneAccountRegistrar$State;
.super Ljava/lang/Object;
.source "PhoneAccountRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/PhoneAccountRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public final accounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation
.end field

.field public defaultOutgoing:Landroid/telecom/PhoneAccountHandle;

.field public simCallManager:Landroid/telecom/PhoneAccountHandle;

.field public versionNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->defaultOutgoing:Landroid/telecom/PhoneAccountHandle;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    return-void
.end method
