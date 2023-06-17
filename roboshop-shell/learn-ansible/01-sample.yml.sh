- name: Demo playbook
  hosts: all
  tasks: 
    - name: print Hello World
      ansible.builtin.debug:
        msg: Hello World