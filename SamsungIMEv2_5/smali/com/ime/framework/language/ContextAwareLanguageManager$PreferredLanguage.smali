.class Lcom/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;
.super Ljava/lang/Object;
.source "ContextAwareLanguageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/language/ContextAwareLanguageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreferredLanguage"
.end annotation


# instance fields
.field public languageID:I

.field public preference:B


# direct methods
.method public constructor <init>(IB)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->languageID:I

    iput-byte v0, p0, Lcom/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    iput p1, p0, Lcom/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->languageID:I

    iput-byte p2, p0, Lcom/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    return-void
.end method
