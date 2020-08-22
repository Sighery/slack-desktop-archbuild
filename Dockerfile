FROM sighery/archbuilder:latest AS builder

USER builder

COPY --chown=builder ./slack-desktop/* package/
WORKDIR package

RUN makepkg -s --needed --noconfirm --noprogressbar

CMD ["/bin/bash"]
